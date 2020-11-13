/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtParser;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import java.security.Key;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import org.springframework.stereotype.Component;

/**
 *
 * @author Moises
 */
@Component
public class JwtUtil {

    private Key key;

    @PostConstruct
    public void init() {
        try {
            this.key = Keys.hmacShaKeyFor("U0lTVEVNQURFQVVURU5USUNBQ0lPTlBBUkFTRVJWSUNJT1dFQlJFU0FQSVNDRw==".getBytes());
        } catch (Exception ex) {
            Logger.getLogger(JwtUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Claims getClaimsToken(String token) throws Exception {
        JwtParser jwtp = Jwts.parserBuilder().setSigningKey(key).build();
        if (jwtp.isSigned(token)) {
            return jwtp.parseClaimsJws(token).getBody();
        }
        return null;
    }

    public Date getFechaExpiracionToken(String token) throws Exception {
        return getClaimsToken(token).getExpiration();
    }

    private boolean isTokenExpirado(String token) throws Exception {
        final Date dateExpiration = getFechaExpiracionToken(token);
        return dateExpiration.before(new Date());
    }

    public boolean validateToken(String token) throws Exception {
        return !isTokenExpirado(token);
    }

}
