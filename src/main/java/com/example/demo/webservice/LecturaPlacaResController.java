/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.Flujo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.demo.webservice.repository.FlujoRepository;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.util.EntityUtils;

/**
 *
 * @author Moises
 */
@RestController
@RequestMapping("/REST")
public class LecturaPlacaResController {

    @Autowired
    private FlujoRepository flujoRepository;

    private BasicHttpContext httpContext;

    private static final String SERVER = "localhost";

    private static final String PORT = "57213";

    @PostMapping(value = "/lecturaPlaca", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity lecturaNumPlaca(@RequestBody String jsonString) {
        try {
            JsonObject json = new Gson().fromJson(jsonString, JsonObject.class);
            if (json.get("numplaca") == null || json.get("numplaca").isJsonNull()) {
                throw new Exception("Falta numero de placa, debe llevar la variable 'numplaca'");
            }
            Flujo lecturaPlaca = flujoRepository.findOneFlujoByPlaca(json.get("numplaca").getAsString());
            if (lecturaPlaca == null || lecturaPlaca.getId() == null) {
                throw new Exception("Placa no encontrada");
            }
            ejecutarTarea();
            return ResponseEntity.ok().body(actualizarRegistro("La placa fue leida exitosamente", ""));
        } catch (Exception ex) {
            return ResponseEntity.ok().body(actualizarRegistro("", ex.getMessage()));
        }
    }

    private void ejecutarTarea() throws Exception {
        BasicCookieStore cookieStoreLogin = new BasicCookieStore();
        httpContext = new BasicHttpContext();
        httpContext.setAttribute(HttpClientContext.COOKIE_STORE, cookieStoreLogin);
        HttpEntity entity;
        HttpPost post = new HttpPost("http://" + SERVER + ":" + PORT + "/bonita/loginservice");
        List<NameValuePair> urlParameters = new ArrayList<>();
        urlParameters.add(new BasicNameValuePair("username", "walter.bates"));
        urlParameters.add(new BasicNameValuePair("password", "bpm"));
        urlParameters.add(new BasicNameValuePair("redirect", "false"));
        urlParameters.add(new BasicNameValuePair("redirectUrl", ""));
        post.setEntity(new UrlEncodedFormEntity(urlParameters));
        try (CloseableHttpClient httpClient = HttpClients.createDefault(); CloseableHttpResponse response = httpClient.execute(post, httpContext)) {
            System.out.println(EntityUtils.toString(response.getEntity()));
            entity = (HttpEntity) response.getEntity();
            List<Cookie> cookies = cookieStoreLogin.getCookies();
            HttpGet urlProceso = new HttpGet("http://" + SERVER + ":" + PORT + "/bonita/API/bpm/process?s=ConsumirWS&p=0&c=1&o=version%20DESC&f=activationState=ENABLED");
            CloseableHttpResponse responseProceso = httpClient.execute(urlProceso, httpContext);
            // Get HttpResponse Status
            System.out.println(responseProceso.getStatusLine().toString());
            HttpEntity entityProceso = responseProceso.getEntity();
            String resultProceso = EntityUtils.toString(entityProceso);
            resultProceso = resultProceso.substring(1, resultProceso.length());
            resultProceso = resultProceso.substring(0, resultProceso.length() - 1);
            JsonObject jsonProceso = new Gson().fromJson(resultProceso, JsonObject.class);

            HttpGet urlTarea = new HttpGet("http://" + SERVER + ":" + PORT + "/bonita/API/bpm/userTask?p=0&c=1&f=name=RecibeDatosWS&f=processId=" + jsonProceso.get("id").getAsLong());
            CloseableHttpResponse responseTarea = httpClient.execute(urlTarea, httpContext);
            System.out.println(responseTarea.getStatusLine().toString());
            HttpEntity entityTarea = responseTarea.getEntity();
            String resultTarea = EntityUtils.toString(entityTarea);
            resultTarea = resultTarea.substring(1, resultTarea.length());
            resultTarea = resultTarea.substring(0, resultTarea.length() - 1);
            JsonObject jsonTarea = new Gson().fromJson(resultTarea, JsonObject.class);
            
            HttpPost posTarea = new HttpPost("http://" + SERVER + ":" + PORT + "/bonita/API/bpm/userTask/" + jsonTarea.get("id").getAsLong() + "/execution");
            JsonObject json = new JsonObject();
            json.addProperty("habilitado", "SI");
            StringEntity posting = new StringEntity(json.toString());
            posTarea.setEntity(posting);
            posTarea.addHeader("Content-Type", MediaType.APPLICATION_JSON_VALUE);
            posTarea.setHeader(cookies.get(1).getName(), cookies.get(1).getValue());
            CloseableHttpResponse responseExecTarea = httpClient.execute(posTarea, httpContext);
            System.out.println(responseExecTarea.getStatusLine().toString());
        }

    }

    private String actualizarRegistro(String descripcion, String error) {
        JsonObject jsonResponse = new JsonObject();
        if (descripcion != null && Strings.isNotEmpty(descripcion)) {
            jsonResponse.addProperty("resultado", descripcion);
        }
        if (error != null && Strings.isNotEmpty(error)) {
            jsonResponse.addProperty("error", error);
        }
        return jsonResponse.toString();
    }

}
