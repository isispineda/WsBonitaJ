/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "duca")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Duca.findAll", query = "SELECT d FROM Duca d")
    , @NamedQuery(name = "Duca.findByIdDucas", query = "SELECT d FROM Duca d WHERE d.idDucas = :idDucas")
    , @NamedQuery(name = "Duca.findByDocTyp", query = "SELECT d FROM Duca d WHERE d.docTyp = :docTyp")
    , @NamedQuery(name = "Duca.findByRefYer", query = "SELECT d FROM Duca d WHERE d.refYer = :refYer")
    , @NamedQuery(name = "Duca.findByCuoCod", query = "SELECT d FROM Duca d WHERE d.cuoCod = :cuoCod")
    , @NamedQuery(name = "Duca.findByRegSer", query = "SELECT d FROM Duca d WHERE d.regSer = :regSer")
    , @NamedQuery(name = "Duca.findByRegNbr", query = "SELECT d FROM Duca d WHERE d.regNbr = :regNbr")
    , @NamedQuery(name = "Duca.findByGdsWgt", query = "SELECT d FROM Duca d WHERE d.gdsWgt = :gdsWgt")
    , @NamedQuery(name = "Duca.findByCuoMrk1", query = "SELECT d FROM Duca d WHERE d.cuoMrk1 = :cuoMrk1")
    , @NamedQuery(name = "Duca.findByGdsCnt1", query = "SELECT d FROM Duca d WHERE d.gdsCnt1 = :gdsCnt1")
    , @NamedQuery(name = "Duca.findByCuoMrk2", query = "SELECT d FROM Duca d WHERE d.cuoMrk2 = :cuoMrk2")
    , @NamedQuery(name = "Duca.findByGdsCnt2", query = "SELECT d FROM Duca d WHERE d.gdsCnt2 = :gdsCnt2")
    , @NamedQuery(name = "Duca.findByDrvIde", query = "SELECT d FROM Duca d WHERE d.drvIde = :drvIde")
    , @NamedQuery(name = "Duca.findByTlrPlaN", query = "SELECT d FROM Duca d WHERE d.tlrPlaN = :tlrPlaN")})
public class Duca implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_DUCAS")
    private Integer idDucas;
    @Column(name = "DOC_TYP")
    private String docTyp;
    @Column(name = "REF_YER")
    private Integer refYer;
    @Basic(optional = false)
    @Column(name = "CUO_COD")
    private String cuoCod;
    @Column(name = "REG_SER")
    private String regSer;
    @Column(name = "REG_NBR")
    private String regNbr;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "GDS_WGT")
    private BigDecimal gdsWgt;
    @Column(name = "CUO_MRK1")
    private String cuoMrk1;
    @Column(name = "GDS_CNT1")
    private String gdsCnt1;
    @Column(name = "CUO_MRK2")
    private String cuoMrk2;
    @Column(name = "GDS_CNT2")
    private String gdsCnt2;
    @Column(name = "DRV_IDE")
    private String drvIde;
    @Column(name = "TLR_PLA_N")
    private String tlrPlaN;
    @JoinColumn(name = "TRA_PLA_NBR", referencedColumnName = "TRA_PLA_NBR")
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private MediaInfo traPlaNbr;

    public Duca() {
    }

    public Duca(Integer idDucas) {
        this.idDucas = idDucas;
    }

    public Duca(Integer idDucas, String cuoCod) {
        this.idDucas = idDucas;
        this.cuoCod = cuoCod;
    }

    @JsonIgnore
    public Integer getIdDucas() {
        return idDucas;
    }

    public void setIdDucas(Integer idDucas) {
        this.idDucas = idDucas;
    }

    @JsonProperty("OC_TYP")
    public String getDocTyp() {
        return docTyp;
    }

    public void setDocTyp(String docTyp) {
        this.docTyp = docTyp;
    }

    @JsonProperty("REF_YER")
    public Integer getRefYer() {
        return refYer;
    }

    public void setRefYer(Integer refYer) {
        this.refYer = refYer;
    }

    @JsonProperty("CUO_COD")
    public String getCuoCod() {
        return cuoCod;
    }

    public void setCuoCod(String cuoCod) {
        this.cuoCod = cuoCod;
    }

    @JsonProperty("REG_SER")
    public String getRegSer() {
        return regSer;
    }

    public void setRegSer(String regSer) {
        this.regSer = regSer;
    }

    @JsonProperty("REG_NBR")
    public String getRegNbr() {
        return regNbr;
    }

    public void setRegNbr(String regNbr) {
        this.regNbr = regNbr;
    }

    @JsonProperty("GDS_WGT")
    public BigDecimal getGdsWgt() {
        return gdsWgt;
    }

    public void setGdsWgt(BigDecimal gdsWgt) {
        this.gdsWgt = gdsWgt;
    }

    @JsonProperty("CUO_MRK1")
    public String getCuoMrk1() {
        return cuoMrk1;
    }

    public void setCuoMrk1(String cuoMrk1) {
        this.cuoMrk1 = cuoMrk1;
    }

    @JsonProperty("CUO_MRK2")
    public String getCuoMrk2() {
        return cuoMrk2;
    }

    public void setCuoMrk2(String cuoMrk2) {
        this.cuoMrk2 = cuoMrk2;
    }

    @JsonProperty("GDS_CNT1")
    public String getGdsCnt1() {
        return gdsCnt1;
    }

    public void setGdsCnt1(String gdsCnt1) {
        this.gdsCnt1 = gdsCnt1;
    }

    @JsonProperty("GDS_CNT2")
    public String getGdsCnt2() {
        return gdsCnt2;
    }

    public void setGdsCnt2(String gdsCnt2) {
        this.gdsCnt2 = gdsCnt2;
    }

    @JsonProperty("DRV_IDE")
    public String getDrvIde() {
        return drvIde;
    }

    public void setDrvIde(String drvIde) {
        this.drvIde = drvIde;
    }

    @JsonProperty("TLR_PLA_N")
    public String getTlrPlaN() {
        return tlrPlaN;
    }

    public void setTlrPlaN(String tlrPlaN) {
        this.tlrPlaN = tlrPlaN;
    }

    @JsonIgnore
    public MediaInfo getTraPlaNbr() {
        return traPlaNbr;
    }

    public void setTraPlaNbr(MediaInfo traPlaNbr) {
        this.traPlaNbr = traPlaNbr;
    }

    @Override
    public boolean equals(Object other) {
        return (other instanceof Duca) && (traPlaNbr != null)
                ? traPlaNbr.equals(((Duca) other).traPlaNbr)
                : (other == this);
    }

    @Override
    public int hashCode() {
        return (traPlaNbr != null) ? (this.getClass().hashCode() + traPlaNbr.hashCode()) : super.hashCode();
    }

    @Override
    public String toString() {
        return "Duca{" + "idDucas=" + idDucas + ", docTyp=" + docTyp + ", refYer=" + refYer + ", cuoCod=" + cuoCod + ", regSer=" + regSer + ", regNbr=" + regNbr + ", gdsWgt=" + gdsWgt + ", cuoMrk1=" + cuoMrk1 + ", gdsCnt1=" + gdsCnt1 + ", cuoMrk2=" + cuoMrk2 + ", gdsCnt2=" + gdsCnt2 + ", drvIde=" + drvIde + ", tlrPlaN=" + tlrPlaN + '}';
    }

}
