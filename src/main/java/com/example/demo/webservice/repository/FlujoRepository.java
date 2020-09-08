/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.Flujo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Moises
 */
@Repository
public interface FlujoRepository extends JpaRepository<Flujo, Long> {

    @Query("select f from Flujo f where f.placa = ?1 and f.estadoFlujo = 'I'")
    public Flujo findOneFlujoByPlaca(String nplaca);
}
