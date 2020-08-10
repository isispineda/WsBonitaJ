/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "mag")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mag.findAll", query = "SELECT m FROM Mag m")})
public class Mag implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_mag")
    private Integer idMag;
    @Column(name = "no_duca")
    private String noDuca;
    @Column(name = "error_descripcion")
    private String errorDescripcion;
    @Column(name = "estado")
    private Integer estado;
    @Column(name = "tipo_mercaderia")
    private Integer tipoMercaderia;
    @Column(name = "mc_destino")
    private Integer mcDestino;
    @Column(name = "motivo_destino")
    private String motivoDestino;

    public Mag() {
    }

    public Mag(Integer idMag) {
        this.idMag = idMag;
    }

    @JsonIgnore
    public Integer getIdMag() {
        return idMag;
    }

    public void setIdMag(Integer idMag) {
        this.idMag = idMag;
    }

    @JsonProperty("NO_DUCA")
    public String getNoDuca() {
        return noDuca;
    }

    public void setNoDuca(String noDuca) {
        this.noDuca = noDuca;
    }

    @JsonProperty("ERROR")
    public String getErrorDescripcion() {
        return errorDescripcion;
    }

    public void setErrorDescripcion(String errorDescripcion) {
        this.errorDescripcion = errorDescripcion;
    }

    @JsonProperty("ESTADO")
    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    @JsonProperty("TIPO_MERCADERIA")
    public Integer getTipoMercaderia() {
        return tipoMercaderia;
    }

    public void setTipoMercaderia(Integer tipoMercaderia) {
        this.tipoMercaderia = tipoMercaderia;
    }

    @JsonProperty("MC_DESTINO")
    public Integer getMcDestino() {
        return mcDestino;
    }

    public void setMcDestino(Integer mcDestino) {
        this.mcDestino = mcDestino;
    }

    @JsonProperty("MOTIVO_DESTINO")
    public String getMotivoDestino() {
        return motivoDestino;
    }

    public void setMotivoDestino(String motivoDestino) {
        this.motivoDestino = motivoDestino;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idMag != null ? idMag.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mag)) {
            return false;
        }
        Mag other = (Mag) object;
        if ((this.idMag == null && other.idMag != null) || (this.idMag != null && !this.idMag.equals(other.idMag))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.Mag[ idMag=" + idMag + " ]";
    }
    
}
