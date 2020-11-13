/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.repository;

import com.sv.aduanaJWT.model.MediaInfo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dennys
 */
@Repository
public interface MediaInfoRepository extends JpaRepository<MediaInfo, Long> {

    @Query("SELECT t FROM MediaInfo t WHERE t.traPlaNbr = ?1")
    public MediaInfo findOneTraPlaNbr(String CuoCod);
    
    
}
