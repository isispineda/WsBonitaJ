/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.Mag;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dennys
 */
@Repository
public interface MagRepository extends JpaRepository<Mag, Long> {

    @Query("SELECT t FROM Mag t WHERE t.noDuca = ?1")
    public Mag findOneNoDuca(String noDuca);
    
    
}
