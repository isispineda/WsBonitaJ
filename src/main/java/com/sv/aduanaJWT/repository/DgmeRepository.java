/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.repository;

import com.sv.aduanaJWT.model.Dgme;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dennys
 */
@Repository
public interface DgmeRepository extends JpaRepository<Dgme, Long> {

    @Query("SELECT t FROM Dgme t WHERE t.placa = ?1")
    public Dgme findOneTranId(String placa);
    
    
}
