/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.LecturaPlaca;
import com.example.demo.webservice.repository.LecturaPlacaRepository;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Moises
 */
@RestController
@RequestMapping("/REST")
public class LecturaPlacaResController {

    @Autowired
    private LecturaPlacaRepository lecturaPlacaRepository;

    @PostMapping(value = "/agregarDatosFlujo", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity crearInfoFlujo(@RequestBody String jsonString) {
        try {
            JsonObject json = new Gson().fromJson(jsonString, JsonObject.class);
            if (json.get("processId") == null || json.get("processId").isJsonNull()) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(actualizarRegistro("", "Falta ID de proceso, debe llevar la variable 'processId'"));
            }
            if (json.get("numplaca") == null || json.get("numplaca").isJsonNull()) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(actualizarRegistro("", "Falta numero de placa, debe llevar la variable 'numplaca'"));
            }
            LecturaPlaca lecturaPlaca = new LecturaPlaca();
            lecturaPlaca.setNumplaca(json.get("numplaca").getAsString());
            lecturaPlaca.setProcessId(json.get("processId").getAsLong());
            lecturaPlaca.setProcesado("NO");
            lecturaPlaca = lecturaPlacaRepository.save(lecturaPlaca);
            if (lecturaPlaca != null && lecturaPlaca.getId() != null) {
                return ResponseEntity.ok().body(actualizarRegistro("Se guardo el registro exitosamente", ""));
            }
            return ResponseEntity.ok().body(actualizarRegistro("", "No se guardo el registro"));
        } catch (Exception ex) {
            return ResponseEntity.ok().body(actualizarRegistro("", ex.getMessage()));
        }
    }

    @PostMapping(value = "/lecturaPlaca", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity lecturaNumPlaca(@RequestBody String jsonString) {
        try {
            JsonObject json = new Gson().fromJson(jsonString, JsonObject.class);
            if (json.get("numplaca") == null || json.get("numplaca").isJsonNull()) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(actualizarRegistro("", "Falta numero de placa, debe llevar la variable 'numplaca'"));
            }
            LecturaPlaca lecturaPlaca = lecturaPlacaRepository.findOneLecturaPlacaByPlaca(json.get("numplaca").getAsString());
            if (lecturaPlaca != null && lecturaPlaca.getId() != null) {
                lecturaPlaca.setProcesado("SI");
                lecturaPlacaRepository.save(lecturaPlaca);
                return ResponseEntity.ok().body(actualizarRegistro("Lectura de placa realizada", ""));
            }
            return ResponseEntity.ok().body(actualizarRegistro("", "Placa no encontrada"));
        } catch (Exception ex) {
            return ResponseEntity.ok().body(actualizarRegistro("", ex.getMessage()));
        }
    }

    @PostMapping(value = "/verificarLecturaPlaca", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity verificarLecturaNumPlaca(@RequestBody String jsonString) {
        try {
            JsonObject json = new Gson().fromJson(jsonString, JsonObject.class);
            if (json.get("processId") == null || json.get("processId").isJsonNull()) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(verificarRegistro("NO"));
            }
            LecturaPlaca lecturaPlaca = lecturaPlacaRepository.findOneLecturaPlacaByProceso(json.get("processId").getAsLong());
            if (lecturaPlaca != null && lecturaPlaca.getId() != null) {
                return ResponseEntity.ok().body(verificarRegistro("SI"));
            }
            return ResponseEntity.ok().body(verificarRegistro("NO"));
        } catch (Exception ex) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(verificarRegistro("NO"));
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

    private String verificarRegistro(String habilitado) {
        JsonObject jsonResponse = new JsonObject();
        jsonResponse.addProperty("habilitado", habilitado);
        return jsonResponse.toString();
    }

}
