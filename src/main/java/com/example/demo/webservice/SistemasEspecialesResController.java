/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.MediaInfo;
import com.example.demo.webservice.model.SistemasEspeciales;
import com.example.demo.webservice.repository.SistemasEspecialesRepository;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import java.time.LocalDate;
import java.util.Random;
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
 * @author Moises
 */
@RestController
@RequestMapping("/demo")
public class SistemasEspecialesResController {

    @Autowired
    private SistemasEspecialesRepository sistemasEspecialesRepository;

    @PostMapping(value = "/sistemasespeciales", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity findAllDucas(@RequestBody String jsonStr) {
        try {
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            System.out.println(json.get("Codigo_pc").getAsString());
            se = sistemasEspecialesRepository.findOneScg(json.get("Codigo_pc").getAsString());

            if (se == null) {
                throw new JsonSyntaxException("701");
            } else {
                updateLectura(String.valueOf(se.getScg()));
            }
            return ResponseEntity.ok().body(se);
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(ses);
        }
    }

    private SistemasEspeciales capturarExcepcion(String codExepcion, String jsonStr) {
        SistemasEspeciales esp = new SistemasEspeciales();
        if (codExepcion.equals("701")) {
            esp.setCodigoMensaje("Error, registros no econtrados,  " + LocalDate.now());
        }
        return esp;
    }

    private void updateLectura(String id) {
        if (id != null) {
            this.sistemasEspecialesRepository.updateStatus(id);
        }
    }

    @PostMapping(value = "/instruccionautomatica", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity intAutomatica(@RequestBody String jsonStr) {
        try {
            JsonObject jsonOut = new JsonObject();
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            System.out.println(json.get("ID_ORIGEN_LA").getAsString());
            System.out.println(json.get("PLACA").getAsString());
            se = sistemasEspecialesRepository.findResultAutomatic(json.get("ID_ORIGEN_LA").getAsString(), json.get("PLACA").getAsString());

            if (se == null) {
                throw new JsonSyntaxException("701");
            } else {
                jsonOut.addProperty("CODIGO_MENSAJE", se.getCodigoMensaje());
                jsonOut.addProperty("NO_PLUMA", se.getNoPluma());
                jsonOut.addProperty("ACCION_PLUMA", se.getAccionPluma());
            }
            return ResponseEntity.ok().body(jsonOut.toString());
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(ses);
        }
    }

    @PostMapping(value = "/sistemasespecialesout", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity sistemasEspecialesOut(@RequestBody String jsonStr) {
        try {
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            System.out.println(json.get("ID_ORIGEN_LA").getAsString());
            System.out.println(json.get("PLACA").getAsString());
            se = sistemasEspecialesRepository.findOneSEOut(json.get("ID_ORIGEN_LA").getAsString(), json.get("PLACA").getAsString());

            if (se == null) {
                throw new JsonSyntaxException("701");
            } else {
                //No implementado!
            }
            return ResponseEntity.ok().body(se);
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(ses);
        }
    }

    @PostMapping(value = "/verificacionoutdga", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity verificacionOutDga(@RequestBody String jsonStr) {
        try {
            JsonObject jsonOut = new JsonObject();
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            System.out.println(json.get("ID_ORIGEN_LA").getAsString());
            System.out.println(json.get("PLACA").getAsString());
            se = sistemasEspecialesRepository.findOneVerificacionOutDGA(json.get("ID_ORIGEN_LA").getAsString(), json.get("PLACA").getAsString());

            if (se == null) {
                jsonOut.addProperty("MENSAJE", "NULL, ERRORS");
            } else {
                jsonOut.addProperty("MENSAJE", "OK, SUCCESS");
            }
            return ResponseEntity.ok().body(jsonOut.toString());
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(ses);
        }
    }

    @PostMapping(value = "/enviodga", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void envioDGA(@RequestBody String jsonStr) {
        try {
            JsonObject jsonOut = new JsonObject();
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            // System.out.println(json.get("ID_ORIGEN_LA").getAsString());
            System.out.println(json.get("PLACA").getAsString());
            se = sistemasEspecialesRepository.findOneEnvioDGA(json.get("PLACA").getAsString());

            if (se == null) {
                System.out.println("ENVIODGA, ERROR-VACIO ");
                //jsonOut.addProperty("MENSAJE", "NULL, ERRORS");
            } else {
                System.out.println("ENVIODGA, SUCCESS ");
                //jsonOut.addProperty("MENSAJE", "OK, SUCCESS");
            }
            //return ResponseEntity.ok().body(jsonOut.toString());
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            //   return ResponseEntity.ok().body(ses);
        }
    }

    @PostMapping(value = "/enviomensaje", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity envioMensaje(@RequestBody String jsonStr) {
        try {
            JsonObject jsonOut = new JsonObject();
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            SistemasEspeciales se = new SistemasEspeciales();
            System.out.println(json.get("ID_ORIGEN_LA").getAsString());
            System.out.println(json.get("PLACA").getAsString());
            se = sistemasEspecialesRepository.findOneVerificacionOutDGA(json.get("ID_ORIGEN_LA").getAsString(), json.get("PLACA").getAsString());

            if (se == null) {
                jsonOut.addProperty("MENSAJE", "NULL, DATOS NO ENCONTRADOS, ERRORS");
            } else {
                Random rand = new Random();
                int randomNum = (int) (Math.random()*3);
                if (randomNum == 1) {
                     jsonOut.addProperty("INFO", "INFO, DIRIJASE A LA SALIDA ");
                } else if(randomNum == 2 ){
                    jsonOut.addProperty("INFO", "INFO, DIRIJASE AL PARQUEO");
                }else{
                   jsonOut.addProperty("INFO", "INFO, DIRIJASE A ISPECCION"); 
                }
                
            }
            return ResponseEntity.ok().body(jsonOut.toString());
        } catch (Exception ex) {

            System.out.println(" ex " + ex.getMessage());
            SistemasEspeciales ses = new SistemasEspeciales();
            ses = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(ses);
        }
    }

}
