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
@Table(name = "sistemas_especiales")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SistemasEspeciales.findAll", query = "SELECT s FROM SistemasEspeciales s")})
public class SistemasEspeciales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "SCG")
    private String scg;
    @Column(name = "ESTADO_REGISTRO")
    private String estadoRegistro;
    @Column(name = "FECHA_ADICION")
    private String fechaAdicion;
    @Column(name = "ID_IMAGEN1")
    private String idImagen1;
    @Column(name = "ID_IMAGEN2")
    private String idImagen2;
    @Column(name = "ID_IMAGEN3")
    private String idImagen3;
    @Column(name = "ID_IMAGEN4")
    private String idImagen4;
    @Column(name = "ID_ORIGEN_LA")
    private String idOrigenLa;
    @Column(name = "ID_VIDEO")
    private String idVideo;
    @Column(name = "MARCHAMO")
    private String marchamo;
    @Column(name = "PARABRISAS")
    private String parabrisas;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PC_CONTENEDOR")
    private BigDecimal pcContenedor;
    @Column(name = "PC_MARCHAMO")
    private BigDecimal pcMarchamo;
    @Column(name = "PC_PARABRISAS")
    private BigDecimal pcParabrisas;
    @Column(name = "PC_PESO")
    private BigDecimal pcPeso;
    @Column(name = "PC_PLACA")
    private BigDecimal pcPlaca;
    @Column(name = "PC_ROSTRO")
    private BigDecimal pcRostro;
    @Column(name = "PC_TRASERA")
    private BigDecimal pcTrasera;
    @Column(name = "PESO")
    private String peso;
    @Column(name = "PLACA")
    private String placa;
    @Column(name = "ROSTRO")
    private String rostro;
    @Column(name = "TIPO_LECTURA")
    private String tipoLectura;
    @Column(name = "TRASERA")
    private String trasera;
    @Column(name = "CONTENEDOR")
    private String contenedor;
    @Column(name = "LEIDO")
    private String leido;
    @Column(name = "CODIGO_MENSAJE")
    private String codigoMensaje;
    @Column(name = "CODIGO_FLUJO")
    private String codigoFlujo;
    @Column(name = "FECHA_INSTRUCCION")
    private String fechaInstruccion;
    @Column(name = "NO_PLUMA")
    private String noPluma;
    @Column(name = "ACCION_PLUMA")
    private String accionPluma;
    @Column(name = "ESTADO_LECTURA")
    private String estadoLectura;

    public SistemasEspeciales() {
    }

    public SistemasEspeciales(Integer id) {
        this.id = id;
    }

    @JsonIgnore
    public String getScg() {
        return scg;
    }

    public void setScg(String scg) {
        this.scg = scg;
    }

    @JsonIgnore
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @JsonProperty("ESTADO_REGISTRO")
    public String getEstadoRegistro() {
        return estadoRegistro;
    }

    public void setEstadoRegistro(String estadoRegistro) {
        this.estadoRegistro = estadoRegistro;
    }

    @JsonProperty("FECHA_ADICION")
    public String getFechaAdicion() {
        return fechaAdicion;
    }

    public void setFechaAdicion(String fechaAdicion) {
        this.fechaAdicion = fechaAdicion;
    }

    @JsonProperty("IMAGEN1")
    public String getIdImagen1() {
        return idImagen1;
    }

    public void setIdImagen1(String idImagen1) {
        this.idImagen1 = idImagen1;
    }

    @JsonProperty("IMAGEN2")
    public String getIdImagen2() {
        return idImagen2;
    }

    public void setIdImagen2(String idImagen2) {
        this.idImagen2 = idImagen2;
    }

    @JsonProperty("IMAGEN3")
    public String getIdImagen3() {
        return idImagen3;
    }

    public void setIdImagen3(String idImagen3) {
        this.idImagen3 = idImagen3;
    }

    @JsonProperty("IMAGEN4")
    public String getIdImagen4() {
        return idImagen4;
    }

    public void setIdImagen4(String idImagen4) {
        this.idImagen4 = idImagen4;
    }

    @JsonProperty("ID_ORIGEN_LA")
    public String getIdOrigenLa() {
        return idOrigenLa;
    }

    public void setIdOrigenLa(String idOrigenLa) {
        this.idOrigenLa = idOrigenLa;
    }

    @JsonProperty("ID_VIDEO")
    public String getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(String idVideo) {
        this.idVideo = idVideo;
    }

    @JsonProperty("MARCHAMO")
    public String getMarchamo() {
        return marchamo;
    }

    public void setMarchamo(String marchamo) {
        this.marchamo = marchamo;
    }

    @JsonProperty("PARABRISAS")
    public String getParabrisas() {
        return parabrisas;
    }

    public void setParabrisas(String parabrisas) {
        this.parabrisas = parabrisas;
    }

    @JsonProperty("PC_CONTENEDOR")
    public BigDecimal getPcContenedor() {
        return pcContenedor;
    }

    public void setPcContenedor(BigDecimal pcContenedor) {
        this.pcContenedor = pcContenedor;
    }

    @JsonProperty("PC_MARCHAMO")
    public BigDecimal getPcMarchamo() {
        return pcMarchamo;
    }

    public void setPcMarchamo(BigDecimal pcMarchamo) {
        this.pcMarchamo = pcMarchamo;
    }

    @JsonProperty("PC_PARABRISAS")
    public BigDecimal getPcParabrisas() {
        return pcParabrisas;
    }

    public void setPcParabrisas(BigDecimal pcParabrisas) {
        this.pcParabrisas = pcParabrisas;
    }

    @JsonProperty("PC_PESO")
    public BigDecimal getPcPeso() {
        return pcPeso;
    }

    public void setPcPeso(BigDecimal pcPeso) {
        this.pcPeso = pcPeso;
    }

    @JsonProperty("PC_PLACA")
    public BigDecimal getPcPlaca() {
        return pcPlaca;
    }

    public void setPcPlaca(BigDecimal pcPlaca) {
        this.pcPlaca = pcPlaca;
    }

    @JsonProperty("PC_ROSTRO")
    public BigDecimal getPcRostro() {
        return pcRostro;
    }

    public void setPcRostro(BigDecimal pcRostro) {
        this.pcRostro = pcRostro;
    }

    @JsonProperty("PC_TRASERA")
    public BigDecimal getPcTrasera() {
        return pcTrasera;
    }

    public void setPcTrasera(BigDecimal pcTrasera) {
        this.pcTrasera = pcTrasera;
    }

    @JsonProperty("PESO")
    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    @JsonProperty("PLACA")
    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    @JsonProperty("ROSTRO")
    public String getRostro() {
        return rostro;
    }

    public void setRostro(String rostro) {
        this.rostro = rostro;
    }

    @JsonProperty("TIPO_LECTURA")
    public String getTipoLectura() {
        return tipoLectura;
    }

    public void setTipoLectura(String tipoLectura) {
        this.tipoLectura = tipoLectura;
    }

    @JsonProperty("TRASERA")
    public String getTrasera() {
        return trasera;
    }

    public void setTrasera(String trasera) {
        this.trasera = trasera;
    }

    @JsonProperty("CONTENEDOR")
    public String getContenedor() {
        return contenedor;
    }

    public void setContenedor(String contenedor) {
        this.contenedor = contenedor;
    }

    @JsonProperty("LEIDO")
    public String getLeido() {
        return leido;
    }

    public void setLeido(String leido) {
        this.leido = leido;
    }

    @JsonProperty("CODIGO_MENSAJE")
    public String getCodigoMensaje() {
        return codigoMensaje;
    }

    public void setCodigoMensaje(String codigoMensaje) {
        this.codigoMensaje = codigoMensaje;
    }

    @JsonProperty("CODIGO_FLUJO")
    public String getCodigoFlujo() {
        return codigoFlujo;
    }

    public void setCodigoFlujo(String codigoFlujo) {
        this.codigoFlujo = codigoFlujo;
    }

    @JsonProperty("FECHA_INSTRUCCION")
    public String getFechaInstruccion() {
        return fechaInstruccion;
    }

    public void setFechaInstruccion(String fechaInstruccion) {
        this.fechaInstruccion = fechaInstruccion;
    }

    @JsonProperty("NO_PLUMA")
    public String getNoPluma() {
        return noPluma;
    }

    public void setNoPluma(String noPluma) {
        this.noPluma = noPluma;
    }

    @JsonProperty("ACCION_PLUMA")
    public String getAccionPluma() {
        return accionPluma;
    }

    public void setAccionPluma(String accionPluma) {
        this.accionPluma = accionPluma;
    }

    @JsonProperty("ESTADO_LECTURA")
    public String getEstadoLectura() {
        return estadoLectura;
    }

    public void setEstadoLectura(String estadoLectura) {
        this.estadoLectura = estadoLectura;
    }

    @Override
    public String toString() {
        return "com.example.demo.webservice.model.SistemasEspeciales_1[ id=" + id + " ]";
    }

}
