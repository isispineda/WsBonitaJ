/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "funcional_error")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FuncionalError.findAll", query = "SELECT f FROM FuncionalError f")})
public class FuncionalError implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_funcional_error")
    private Integer idFuncionalError;
    @Column(name = "FLD_NAM")
    private String fldNam;
    @Column(name = "ERR_COD")
    private String errCod;
    @Column(name = "ERR_DSC")
    private String errDsc;
    
    @JoinColumn(name = "id_media_info", referencedColumnName = "id_media_info")
    @OneToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private MediaInfo idMediaInfo;

    public FuncionalError() {
    }

    public FuncionalError(Integer idFuncionalError) {
        this.idFuncionalError = idFuncionalError;
    }

    @JsonIgnore
    public Integer getIdFuncionalError() {
        return idFuncionalError;
    }

    public void setIdFuncionalError(Integer idFuncionalError) {
        this.idFuncionalError = idFuncionalError;
    }

    @JsonProperty("FLD_NAM")
    public String getFldNam() {
        return fldNam;
    }

    public void setFldNam(String fldNam) {
        this.fldNam = fldNam;
    }

    @JsonProperty("ERR_COD")
    public String getErrCod() {
        return errCod;
    }

    public void setErrCod(String errCod) {
        this.errCod = errCod;
    }

    @JsonProperty("ERR_DSC")
    public String getErrDsc() {
        return errDsc;
    }

    public void setErrDsc(String errDsc) {
        this.errDsc = errDsc;
    }

    public MediaInfo getIdMediaInfo() {
        return idMediaInfo;
    }

    public void setIdMediaInfo(MediaInfo idMediaInfo) {
        this.idMediaInfo = idMediaInfo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFuncionalError != null ? idFuncionalError.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FuncionalError)) {
            return false;
        }
        FuncionalError other = (FuncionalError) object;
        if ((this.idFuncionalError == null && other.idFuncionalError != null) || (this.idFuncionalError != null && !this.idFuncionalError.equals(other.idFuncionalError))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.FuncionalError[ idFuncionalError=" + idFuncionalError + " ]";
    }

}
