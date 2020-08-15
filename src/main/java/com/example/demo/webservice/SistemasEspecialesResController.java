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
            esp.setCodigoMensaje("Error, registros no econtrados,  "+ LocalDate.now());
        }
        return esp;
    }

}
