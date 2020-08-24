/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.repository;

import com.example.demo.webservice.model.LecturaPlaca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Moises
 */
@Repository
public interface LecturaPlacaRepository extends JpaRepository<LecturaPlaca, Long> {

    @Query("select l from LecturaPlaca l where l.numplaca = ?1 and l.procesado = 'NO'")
    public LecturaPlaca findOneLecturaPlacaByPlaca(String nplaca);

    @Query("select l from LecturaPlaca l where l.processId = ?1 and l.procesado = 'SI'")
    public LecturaPlaca findOneLecturaPlacaByProceso(Long processId);
}
