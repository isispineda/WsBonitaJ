/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "media_info")
@XmlRootElement

public class MediaInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_media_info")
    private Integer idMediaInfo;

    @Column(name = "Result")
    private String result;
    @Column(name = "error_code")
    private Integer errorCode;
    @Column(name = "error_description")
    private String errorDescription;
    @Column(name = "TRA_PLA_NBR")
    private String traPlaNbr;
    @OneToMany(mappedBy = "traPlaNbr", fetch = FetchType.LAZY)
    private List<Duca> ducas;
    @OneToOne(mappedBy = "idMediaInfo", fetch = FetchType.LAZY)
    private Transporte idTransporte;
    @OneToOne(mappedBy = "idMediaInfo", fetch = FetchType.LAZY)
    private FuncionalError idFuncionalError;

    public MediaInfo() {
    }

    public MediaInfo(Integer idMediaInfo) {
        this.idMediaInfo = idMediaInfo;
    }

    @JsonIgnore
    public String getTraPlaNbr() {
        return traPlaNbr;
    }

    public void setTraPlaNbr(String traPlaNbr) {
        this.traPlaNbr = traPlaNbr;
    }

    @JsonIgnore
    public Integer getIdMediaInfo() {
        return idMediaInfo;
    }

    public void setIdMediaInfo(Integer idMediaInfo) {
        this.idMediaInfo = idMediaInfo;
    }

    @JsonProperty("result")
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @JsonProperty("errorCode")
    public Integer getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
    }

    @JsonProperty("errorDescripcion")
    public String getErrorDescription() {
        return errorDescription;
    }

    public void setErrorDescription(String errorDescription) {
        this.errorDescription = errorDescription;
    }

    @JsonProperty("DUCA_OUTPUT_LIST")
    public List<Duca> getDucas() {
        return ducas;
    }

    public void setDucas(List<Duca> ducas) {
        this.ducas = ducas;
    }

    @JsonProperty("TRANSPORT_MEDIA_INFO")
    public Transporte getIdTransporte() {
        return idTransporte;
    }

    public void setIdTransporte(Transporte idTransporte) {
        this.idTransporte = idTransporte;
    }

    @JsonProperty("functionalError")
    public FuncionalError getIdFuncionalError() {
        return idFuncionalError;
    }

    public void setIdFuncionalError(FuncionalError idFuncionalError) {
        this.idFuncionalError = idFuncionalError;
    }

    @Override
    public boolean equals(Object other) {
        return (other instanceof MediaInfo) && (idMediaInfo != null)
                ? idMediaInfo.equals(((MediaInfo) other).idMediaInfo)
                : (other == this);
    }

    @Override
    public int hashCode() {
        return (idMediaInfo != null) ? (this.getClass().hashCode() + idMediaInfo.hashCode()) : super.hashCode();
    }

}
