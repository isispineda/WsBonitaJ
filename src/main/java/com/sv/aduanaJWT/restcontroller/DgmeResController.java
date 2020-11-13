/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.restcontroller;

import com.sv.aduanaJWT.model.Dgme;
import com.sv.aduanaJWT.model.MediaInfo;
import com.sv.aduanaJWT.repository.DgmeRepository;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author
 */
@RestController
@PreAuthorize("isAuthenticated()")
@RequestMapping("/dgme")
public class DgmeResController {

    @Autowired
    private DgmeRepository dgmeRepository;

    @PostMapping(value = "/recibirDatosDGME", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity findAllDgme(@RequestBody String jsonStr) {
        try {
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            Dgme dgme = new Dgme();
            System.out.println(json.get("placa").getAsString());
            dgme = dgmeRepository.findOneTranId(json.get("placa").getAsString());

            if (dgme == null) {
                throw new JsonSyntaxException("701");
            }
            return ResponseEntity.ok().body(dgme);
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            Dgme dgme = new Dgme();
            dgme = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(dgme);
        }
    }

    private Dgme capturarExcepcion(String codExepcion, String jsonStr) {
        Dgme dgme = new Dgme();
        if (codExepcion.equals("701")) {
            dgme.setErrorDescripcion("Error, registros no econtrados,  " + LocalDate.now());
        }
        return dgme;
    }

}
