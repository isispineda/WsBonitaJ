/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import java.io.Serializable;
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
@Table(name = "duca2")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Duca2.findAll", query = "SELECT d FROM Duca2 d")})
public class Duca2 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Basic(optional = false)
    @Column(name = "cuo_cod")
    private String cuoCod;
    @Basic(optional = false)
    @Column(name = "doc_typ")
    private String docTyp;
    @Basic(optional = false)
    @Column(name = "mrg_dsc")
    private String mrgDsc;
    @Basic(optional = false)
    @Column(name = "mrg_ind")
    private String mrgInd;
    @Basic(optional = false)
    @Column(name = "ope_nam")
    private String opeNam;
    @Basic(optional = false)
    @Column(name = "ref_yer")
    private int refYer;
    @Basic(optional = false)
    @Column(name = "reg_nbr")
    private String regNbr;
    @Column(name = "reg_ser")
    private String regSer;
    @Basic(optional = false)
    @Column(name = "res_dsc")
    private String resDsc;
    @Basic(optional = false)
    @Column(name = "res_cod")
    private String resCod;
    @JoinColumn(name = "tra_pla_nbr", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Transporte2 traPlaNbr;

    public Duca2() {
    }

    public Duca2(Long id) {
        this.id = id;
    }

    public Duca2(Long id, String cuoCod, String docTyp, String mrgDsc, String mrgInd, String opeNam, int refYer, String regNbr, String resDsc, String resCod) {
        this.id = id;
        this.cuoCod = cuoCod;
        this.docTyp = docTyp;
        this.mrgDsc = mrgDsc;
        this.mrgInd = mrgInd;
        this.opeNam = opeNam;
        this.refYer = refYer;
        this.regNbr = regNbr;
        this.resDsc = resDsc;
        this.resCod = resCod;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCuoCod() {
        return cuoCod;
    }

    public void setCuoCod(String cuoCod) {
        this.cuoCod = cuoCod;
    }

    public String getDocTyp() {
        return docTyp;
    }

    public void setDocTyp(String docTyp) {
        this.docTyp = docTyp;
    }

    public String getMrgDsc() {
        return mrgDsc;
    }

    public void setMrgDsc(String mrgDsc) {
        this.mrgDsc = mrgDsc;
    }

    public String getMrgInd() {
        return mrgInd;
    }

    public void setMrgInd(String mrgInd) {
        this.mrgInd = mrgInd;
    }

    public String getOpeNam() {
        return opeNam;
    }

    public void setOpeNam(String opeNam) {
        this.opeNam = opeNam;
    }

    public int getRefYer() {
        return refYer;
    }

    public void setRefYer(int refYer) {
        this.refYer = refYer;
    }

    public String getRegNbr() {
        return regNbr;
    }

    public void setRegNbr(String regNbr) {
        this.regNbr = regNbr;
    }

    public String getRegSer() {
        return regSer;
    }

    public void setRegSer(String regSer) {
        this.regSer = regSer;
    }

    public String getResDsc() {
        return resDsc;
    }

    public void setResDsc(String resDsc) {
        this.resDsc = resDsc;
    }

    public String getResCod() {
        return resCod;
    }

    public void setResCod(String resCod) {
        this.resCod = resCod;
    }

    public Transporte2 getTraPlaNbr() {
        return traPlaNbr;
    }

    public void setTraPlaNbr(Transporte2 traPlaNbr) {
        this.traPlaNbr = traPlaNbr;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Duca2)) {
            return false;
        }
        Duca2 other = (Duca2) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.Duca2[ id=" + id + " ]";
    }
    
}
