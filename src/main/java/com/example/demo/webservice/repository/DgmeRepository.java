/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.Dgme;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dennys
 */
@Repository
public interface DgmeRepository extends JpaRepository<Dgme, Long> {

    @Query("SELECT t FROM Dgme t WHERE t.tranId = ?1")
    public Dgme findOneTranId(int tranId);
    
    
}
