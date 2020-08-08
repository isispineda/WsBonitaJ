/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.FuncionalError;
import com.example.demo.webservice.model.MediaInfo;
import com.example.demo.webservice.model.Transporte;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.webservice.repository.MediaInfoRepository;

/**
 *
 * @author Moises
 */
@RestController
@RequestMapping("/demo")
public class mediaInfoResController {

    @Autowired
    private MediaInfoRepository mediaInfoRepository;

    @GetMapping(value = "/consultarducas", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity findAllDucas(@RequestBody String jsonStr) {
        try {
            JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
            //System.out.println("TRA_PLA_NBR" + json.get("TRA_PLA_NBR").getAsString());
            MediaInfo t = new MediaInfo();
            t = mediaInfoRepository.findOneTraPlaNbr(json.get("TRA_PLA_NBR").getAsString());

            if (t == null) {
                throw new JsonSyntaxException("701");
            }
            return ResponseEntity.ok().body(t);
        } catch (JsonSyntaxException ex) {
            System.out.println(" ex " + ex.getMessage());
            MediaInfo t = new MediaInfo();
            t = capturarExcepcion(ex.getMessage(), jsonStr);
            Logger.getLogger(MediaInfo.class.getName()).log(Level.WARNING, ex.getMessage());
            return ResponseEntity.ok().body(t);
        }
    }

    private MediaInfo capturarExcepcion(String codExepcion, String jsonStr) {
        MediaInfo inf = new MediaInfo();
        JsonObject json = new Gson().fromJson(jsonStr, JsonObject.class);
        if (codExepcion.equals("701")) {
  
            FuncionalError fe = new FuncionalError();
            Transporte tra = new Transporte();
            inf.setErrorCode(701);
            inf.setErrorDescription("Datos no encontrados");
            inf.setResult("Error");
            
            fe.setErrCod(codExepcion);
            fe.setFldNam("TRA_PLA_NBR");
            fe.setErrDsc("Numero de placa no encontrada");

            tra.setTraPlaNbr(json.get("TRA_PLA_NBR").getAsString());
            tra.setBdrCty(json.get("BDR_CTY").getAsString());
            tra.setChkPnt(json.get("CHK_PNT").getAsInt());
            tra.setCuoCod(json.get("CUO_COD").getAsString());
            tra.setScgIde(json.get("SCG_IDE").getAsInt());
            
            inf.setIdTransporte(tra);
            inf.setIdFuncionalError(fe);

        }
        return inf;
    }

}
