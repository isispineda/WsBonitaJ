/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.SistemasEspeciales;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dennys
 */
@Repository
public interface SistemasEspecialesRepository extends JpaRepository<SistemasEspeciales, Long> {

    @Query("SELECT s FROM SistemasEspeciales s WHERE s.scg = ?1 ")//and s.estadoLectura ='P'
    public SistemasEspeciales findOneScg(String scg);

    @Transactional
    @Modifying
    @Query("UPDATE SistemasEspeciales s SET s.estadoLectura ='L'  WHERE s.scg = ?1 and s.estadoLectura ='P'")
    public void updateStatus(String scg);

    @Query("SELECT s FROM SistemasEspeciales s WHERE s.idOrigenLa = ?1 and s.placa = ?2")
    public SistemasEspeciales findResultAutomatic(String idOrigenLa, String placa);

    @Query("SELECT s FROM SistemasEspeciales s WHERE s.idOrigenLa = ?1 and s.placa = ?2")
    public SistemasEspeciales findOneSEOut(String idOrigenLa, String placa);

    @Query("SELECT s FROM SistemasEspeciales s WHERE s.idOrigenLa = ?1 and s.placa = ?2")
    public SistemasEspeciales findOneVerificacionOutDGA(String idOrigenLa, String placa);

    @Query("SELECT s FROM SistemasEspeciales s WHERE  s.placa = ?1")
    public SistemasEspeciales findOneEnvioDGA( String placa);
}
