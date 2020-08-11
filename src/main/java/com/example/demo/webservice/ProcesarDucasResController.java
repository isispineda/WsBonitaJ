/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice;

import com.example.demo.webservice.model.Duca2;
import com.example.demo.webservice.model.Transporte2;
import com.example.demo.webservice.repository.Duca2Repository;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.webservice.repository.Transporte2Repository;
import com.google.gson.JsonArray;
import java.util.List;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Moises
 */
@RestController
@RequestMapping("/REST")
public class ProcesarDucasResController {

    @Autowired
    private Transporte2Repository transporteRepository;

    @Autowired
    private Duca2Repository ducaRepository;

    @PostMapping(value = "/procesarDucas", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity procesarDucas(@RequestBody String jsonString) {
        try {
            JsonObject detalle = new JsonObject();
            JsonArray jsonArray = new JsonArray();
            JsonObject json = new Gson().fromJson(jsonString, JsonObject.class);
            if (json.get("TRANSPORT_MEDIA_INFO").getAsJsonObject().get("TRA_PLA_NBR") == null || json.get("TRANSPORT_MEDIA_INFO").getAsJsonObject().get("TRA_PLA_NBR").isJsonNull()) {
                jsonArray.add(crearErrorFuncional("TRA_PLA_NBR", "Falta codigo de placa"));
            }
            if (jsonArray.getAsJsonArray().size() > 0) {
                detalle.addProperty("result", "E");
                detalle.addProperty("errorCode", 3);
                detalle.addProperty("errorDescription", "Error Funcional");
                detalle.add("functionalError", jsonArray);
                return ResponseEntity.ok().body(detalle.toString());
            }
            detalle.addProperty("result", "OK");
            detalle.addProperty("errorCode", 0);
            detalle.addProperty("errorDescription", "Mensaje grabado satisfactoriamente");
            detalle.add("functionalError", new JsonArray());
            Transporte2 transporte = transporteRepository.findOneTransporteByPlaca(json.get("TRANSPORT_MEDIA_INFO").getAsJsonObject().get("TRA_PLA_NBR").getAsString());
            if (transporte == null || transporte.getId() == null) {
                JsonObject jsonScgOutput = new JsonObject();
                jsonScgOutput.addProperty("ERR_DSC", "EMPTY");
                jsonScgOutput.addProperty("STA", 3);
                detalle.add("SCG_OUTPUT", jsonScgOutput);
                return ResponseEntity.ok().body(detalle.toString());
            }
            detalle.add("TRANSPORT_MEDIA_INFO", crearTransporteJson(transporte));
            detalle.add("SCG_OUTPUT", crearScgOutputJson(transporte));
            List<Duca2> ducasValidas = ducaRepository.findAllDucaByTransporte(transporte.getId());
            JsonArray ducaArray = new JsonArray();
            if (ducasValidas != null && !ducasValidas.isEmpty()) {
                for (Duca2 duca : ducasValidas) {
                    JsonObject ducaPadre = new JsonObject();
                    JsonObject ducaHijo = new JsonObject();
                    ducaHijo.addProperty("DOC_TYP", duca.getDocTyp());
                    ducaHijo.addProperty("REF_YER", duca.getRefYer());
                    ducaHijo.addProperty("CUO_COD", duca.getCuoCod());
                    ducaHijo.addProperty("REG_SER", duca.getRegSer());
                    ducaHijo.addProperty("REG_NBR", duca.getRegNbr());
                    ducaHijo.addProperty("MRG_DSC", duca.getMrgDsc());
                    ducaHijo.addProperty("MRG_IND", duca.getMrgInd());
                    ducaHijo.addProperty("OPE_NAM", duca.getOpeNam());
                    ducaHijo.addProperty("RES_COD", duca.getResCod());
                    ducaHijo.addProperty("RES_DSC", duca.getResDsc());
                    ducaPadre.add("DUCA_KEY", ducaHijo);
                    ducaArray.add(ducaPadre);
                }
            }
            detalle.add("PROCCESSED_DUCA_LIST", ducaArray);
            return ResponseEntity.ok().body(detalle.toString());
        } catch (Exception ex) {
            JsonObject errorException = new JsonObject();
            errorException.addProperty("result", "E");
            errorException.addProperty("errorCode", 1);
            errorException.addProperty("errorDescription", ex.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorException.toString()
            );
        }
    }

    private JsonObject crearErrorFuncional(String nomvariable, String descripcion) {
        JsonObject errorFuncional = new JsonObject();
        errorFuncional.addProperty("FLD_NAM", nomvariable);
        errorFuncional.addProperty("ERR_COD", 3);
        errorFuncional.addProperty("ERR_DSC", descripcion);
        return errorFuncional;
    }

    private JsonObject crearTransporteJson(Transporte2 transporte) {
        JsonObject jsonTransporte = new JsonObject();
        jsonTransporte.addProperty("TRA_PLA_NBR", transporte.getTraPlaNbr());
        jsonTransporte.addProperty("CHK_PNT", transporte.getChkPnt());
        jsonTransporte.addProperty("SCG_IDE", transporte.getScgIde());
        jsonTransporte.addProperty("CUO_COD", transporte.getCuoCod());
        jsonTransporte.addProperty("BDR_CTY", transporte.getBdrCty());
        return jsonTransporte;
    }

    private JsonObject crearScgOutputJson(Transporte2 transporte) {
        JsonObject jsonScgOutput = new JsonObject();
        jsonScgOutput.addProperty("ERR_DSC", "SUCCESS");
        jsonScgOutput.addProperty("STA", 2);
        jsonScgOutput.addProperty("BUS_TYP", transporte.getBusTyp());
        jsonScgOutput.addProperty("DST_TYP", transporte.getDstTyp());
        jsonScgOutput.addProperty("DST_DSC", transporte.getDstDsc());
        return jsonScgOutput;
    }

}
