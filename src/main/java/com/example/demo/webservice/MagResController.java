/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.Mag;
import com.example.demo.webservice.model.MediaInfo;
import com.example.demo.webservice.repository.MagRepository;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author 
 */
@RestController
@RequestMapping("/demo")
public class MagResController {

    @Autowired
    private MagRepository magRepository;

    @PostMapping(value = "/mag531", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity findAllMags(@RequestBody String jsonStr) {
        try {
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            JsonArray jsonArray = json.getAsJsonArray("listaDucas");

            JsonObject jsonOut = new JsonObject();
            JsonArray jsonArrayOut = new JsonArray();
            jsonArrayOut = obtenerSelectividades(jsonArray);
            jsonOut.add("LISTADO_SELECTIVIDADES", jsonArrayOut.getAsJsonArray());

            return ResponseEntity.ok().body(jsonOut.toString());
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(null);
        }
    }

    public JsonArray obtenerSelectividades(JsonArray jsonArray) {
        JsonArray selectividadArray = new JsonArray();
        for (int i = 0; i < jsonArray.size(); i++) {
            Mag mg = new Mag();
            JsonObject jsonItem = (JsonObject) jsonArray.get(i);
            mg = magRepository.findOneNoDucaMag(jsonItem.get("Duca").getAsJsonObject().get("NoDuca").getAsString());
            JsonObject selectPadre = new JsonObject();
            if (mg != null) {
                JsonObject selectHijo = new JsonObject();
                selectHijo.addProperty("NO_DUCA", mg.getNoDuca());
                selectHijo.addProperty("ERROR", mg.getErrorDescripcion());
                selectHijo.addProperty("ESTADO", mg.getEstado());
                selectHijo.addProperty("TIPO_MERCADERIA", mg.getTipoMercaderia());
                selectHijo.addProperty("MC_DESTINO", mg.getMcDestino());
                selectHijo.addProperty("MOTIVO_DESTINO", mg.getMcDestino());
                selectPadre.add("SELECTIVIDAD", selectHijo);
                selectividadArray.add(selectPadre);
            } else {
                JsonObject selectHijo = new JsonObject();
                selectHijo.addProperty("NO_DUCA", "");
                selectHijo.addProperty("ERROR", "Numero de Duca no encontrado");
                selectHijo.addProperty("ESTADO", 3);
                selectHijo.addProperty("TIPO_MERCADERIA", "");
                selectHijo.addProperty("MC_DESTINO", "");
                selectHijo.addProperty("MOTIVO_DESTINO", "");
                selectPadre.add("SELECTIVIDAD", selectHijo);
                selectividadArray.add(selectPadre);
            }

        }
        return selectividadArray;
    }

}
