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
@Table(name = "transporte")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Transporte.findAll", query = "SELECT t FROM Transporte t")})
public class Transporte implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_transporte")
    @JsonIgnore
    private Integer idTransporte;
    @Basic(optional = false)
    @Column(name = "TRA_PLA_NBR")
    private String traPlaNbr;
    @Column(name = "BDR_CTY")
    private String bdrCty;
    @Column(name = "CHK_PNT")
    private Integer chkPnt;
    @Basic(optional = false)
    @Column(name = "CUO_COD")
    private String cuoCod;
    @Column(name = "SCG_IDE")
    private Integer scgIde;
    @JoinColumn(name = "id_media_info", referencedColumnName = "id_media_info")
    @OneToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private MediaInfo idMediaInfo;

    public Transporte() {
    }

    public Transporte(Integer idTransporte) {
        this.idTransporte = idTransporte;
    }

    public Transporte(Integer idTransporte, String traPlaNbr, String cuoCod) {
        this.idTransporte = idTransporte;
        this.traPlaNbr = traPlaNbr;
        this.cuoCod = cuoCod;
    }

    @JsonIgnore
    public Integer getIdTransporte() {
        return idTransporte;
    }

    public void setIdTransporte(Integer idTransporte) {
        this.idTransporte = idTransporte;
    }

    @JsonProperty("TRA_PLA_NBR")
    public String getTraPlaNbr() {
        return traPlaNbr;
    }

    public void setTraPlaNbr(String traPlaNbr) {
        this.traPlaNbr = traPlaNbr;
    }

    @JsonProperty("BDR_CTY")
    public String getBdrCty() {
        return bdrCty;
    }

    public void setBdrCty(String bdrCty) {
        this.bdrCty = bdrCty;
    }

    @JsonProperty("CHK_PNT")
    public Integer getChkPnt() {
        return chkPnt;
    }

    public void setChkPnt(Integer chkPnt) {
        this.chkPnt = chkPnt;
    }

    @JsonProperty("CUO_COD")
    public String getCuoCod() {
        return cuoCod;
    }

    public void setCuoCod(String cuoCod) {
        this.cuoCod = cuoCod;
    }

    @JsonProperty("SCG_IDE")
    public Integer getScgIde() {
        return scgIde;
    }

    public void setScgIde(Integer scgIde) {
        this.scgIde = scgIde;
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
        hash += (idTransporte != null ? idTransporte.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Transporte)) {
            return false;
        }
        Transporte other = (Transporte) object;
        if ((this.idTransporte == null && other.idTransporte != null) || (this.idTransporte != null && !this.idTransporte.equals(other.idTransporte))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.Transporte[ idTransporte=" + idTransporte + " ]";
    }

}
