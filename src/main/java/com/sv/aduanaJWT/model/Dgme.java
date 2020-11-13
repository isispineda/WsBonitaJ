/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Valenzuela
 */
@Entity
@Table(name = "dgme")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dgme.findAll", query = "SELECT d FROM Dgme d")})
public class Dgme implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_dgme")
    private Integer idDgme;
    @Column(name = "tran_id")
    private Integer tranId;
    @Column(name = "placa")
    private String placa;
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Column(name = "caseta")
    private String caseta;
    @Column(name = "movimiento")
    private Integer movimiento;
    @Column(name = "condicion_placa")
    private Integer condicionPlaca;
    @Column(name = "condicion_transportista")
    private Integer condicionTransportista;
    @Column(name = "nombre_transportista")
    private String nombreTransportista;
    @Column(name = "tipo_documento_transportista")
    private String tipoDocumentoTransportista;
    @Column(name = "documento_transportista")
    private String documentoTransportista;
    @Column(name = "nacionalidad_transportista")
    private String nacionalidadTransportista;
    @Column(name = "error_descripcion")
    private String errorDescripcion;
    @Column(name = "resultado")
    private Integer resultado;
    @Column(name = "message")
    private String message;

    public Dgme() {
    }

    public Dgme(Integer idDgme) {
        this.idDgme = idDgme;
    }

    @JsonIgnore
    public Integer getIdDgme() {
        return idDgme;
    }

    public void setIdDgme(Integer idDgme) {
        this.idDgme = idDgme;
    }

    @JsonIgnore
    public Integer getTranId() {
        return tranId;
    }

    public void setTranId(Integer tranId) {
        this.tranId = tranId;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCaseta() {
        return caseta;
    }

    public void setCaseta(String caseta) {
        this.caseta = caseta;
    }

    public Integer getMovimiento() {
        return movimiento;
    }

    public void setMovimiento(Integer movimiento) {
        this.movimiento = movimiento;
    }

    @JsonProperty("condicion_placa")
    public Integer getCondicionPlaca() {
        return condicionPlaca;
    }

    public void setCondicionPlaca(Integer condicionPlaca) {
        this.condicionPlaca = condicionPlaca;
    }

    @JsonProperty("condicion_transportista")
    public Integer getCondicionTransportista() {
        return condicionTransportista;
    }

    public void setCondicionTransportista(Integer condicionTransportista) {
        this.condicionTransportista = condicionTransportista;
    }

    @JsonProperty("nombre_transportista")
    public String getNombreTransportista() {
        return nombreTransportista;
    }

    public void setNombreTransportista(String nombreTransportista) {
        this.nombreTransportista = nombreTransportista;
    }

    @JsonProperty("tipo_documento_transportista")
    public String getTipoDocumentoTransportista() {
        return tipoDocumentoTransportista;
    }

    public void setTipoDocumentoTransportista(String tipoDocumentoTransportista) {
        this.tipoDocumentoTransportista = tipoDocumentoTransportista;
    }

    @JsonProperty("documento_transportista")
    public String getDocumentoTransportista() {
        return documentoTransportista;
    }

    public void setDocumentoTransportista(String documentoTransportista) {
        this.documentoTransportista = documentoTransportista;
    }

    @JsonProperty("nacionalidad_transportista")
    public String getNacionalidadTransportista() {
        return nacionalidadTransportista;
    }

    public void setNacionalidadTransportista(String nacionalidadTransportista) {
        this.nacionalidadTransportista = nacionalidadTransportista;
    }

    public String getErrorDescripcion() {
        return errorDescripcion;
    }

    public void setErrorDescripcion(String errorDescripcion) {
        this.errorDescripcion = errorDescripcion;
    }

    @JsonProperty("Resultado")
    public Integer getResultado() {
        return resultado;
    }

    public void setResultado(Integer resultado) {
        this.resultado = resultado;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDgme != null ? idDgme.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dgme)) {
            return false;
        }
        Dgme other = (Dgme) object;
        if ((this.idDgme == null && other.idDgme != null) || (this.idDgme != null && !this.idDgme.equals(other.idDgme))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.Dgme[ idDgme=" + idDgme + " ]";
    }

}
