/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.Duca2;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Moises
 */
@Repository
public interface Duca2Repository extends JpaRepository<Duca2, Long> {

    @Query("select d from Duca2 d where d.traPlaNbr.id = ?1")
    public List<Duca2> findAllDucaByTransporte(Long traPlaNbr);
}
