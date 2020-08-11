/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.Transporte2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Moises
 */
@Repository
public interface Transporte2Repository extends JpaRepository<Transporte2, Long> {

    @Query("select t from Transporte2 t where t.traPlaNbr = ?1")
    public Transporte2 findOneTransporteByPlaca(String nplaca);
}
