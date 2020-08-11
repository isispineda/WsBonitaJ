/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "transporte2")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Transporte2.findAll", query = "SELECT t FROM Transporte2 t")})
public class Transporte2 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Basic(optional = false)
    @Column(name = "tra_pla_nbr")
    private String traPlaNbr;
    @Basic(optional = false)
    @Column(name = "bdr_cty")
    private String bdrCty;
    @Basic(optional = false)
    @Column(name = "chk_pnt")
    private int chkPnt;
    @Basic(optional = false)
    @Column(name = "cuo_cod")
    private String cuoCod;
    @Basic(optional = false)
    @Column(name = "scg_ide")
    private int scgIde;
    @Basic(optional = false)
    @Column(name = "dst_dsc")
    private String dstDsc;
    @Basic(optional = false)
    @Column(name = "bus_typ")
    private int busTyp;
    @Basic(optional = false)
    @Column(name = "dst_typ")
    private int dstTyp;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "traPlaNbr", fetch = FetchType.LAZY)
    private List<Duca2> duca2List;

    public Transporte2() {
    }

    public Transporte2(Long id) {
        this.id = id;
    }

    public Transporte2(Long id, String traPlaNbr, String bdrCty, int chkPnt, String cuoCod, int scgIde, String dstDsc, int busTyp, int dstTyp) {
        this.id = id;
        this.traPlaNbr = traPlaNbr;
        this.bdrCty = bdrCty;
        this.chkPnt = chkPnt;
        this.cuoCod = cuoCod;
        this.scgIde = scgIde;
        this.dstDsc = dstDsc;
        this.busTyp = busTyp;
        this.dstTyp = dstTyp;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTraPlaNbr() {
        return traPlaNbr;
    }

    public void setTraPlaNbr(String traPlaNbr) {
        this.traPlaNbr = traPlaNbr;
    }

    public String getBdrCty() {
        return bdrCty;
    }

    public void setBdrCty(String bdrCty) {
        this.bdrCty = bdrCty;
    }

    public int getChkPnt() {
        return chkPnt;
    }

    public void setChkPnt(int chkPnt) {
        this.chkPnt = chkPnt;
    }

    public String getCuoCod() {
        return cuoCod;
    }

    public void setCuoCod(String cuoCod) {
        this.cuoCod = cuoCod;
    }

    public int getScgIde() {
        return scgIde;
    }

    public void setScgIde(int scgIde) {
        this.scgIde = scgIde;
    }

    public String getDstDsc() {
        return dstDsc;
    }

    public void setDstDsc(String dstDsc) {
        this.dstDsc = dstDsc;
    }

    public int getBusTyp() {
        return busTyp;
    }

    public void setBusTyp(int busTyp) {
        this.busTyp = busTyp;
    }

    public int getDstTyp() {
        return dstTyp;
    }

    public void setDstTyp(int dstTyp) {
        this.dstTyp = dstTyp;
    }

    @XmlTransient
    public List<Duca2> getDuca2List() {
        return duca2List;
    }

    public void setDuca2List(List<Duca2> duca2List) {
        this.duca2List = duca2List;
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
        if (!(object instanceof Transporte2)) {
            return false;
        }
        Transporte2 other = (Transporte2) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.Transporte2[ id=" + id + " ]";
    }
    
}
