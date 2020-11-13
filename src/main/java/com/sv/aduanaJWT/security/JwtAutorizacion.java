/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.security;

import com.sv.aduanaJWT.util.JwtUtil;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.UnsupportedJwtException;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

/**
 *
 * @author Moises
 */
@Setter
@Getter
public class JwtAutorizacion extends BasicAuthenticationFilter {

    @Autowired
    private JwtUtil jwtUtil;

    public JwtAutorizacion(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String header = request.getHeader(HttpHeaders.AUTHORIZATION);
        String bearer = "Bearer ";
        if (header == null || !header.startsWith(bearer)) {
             response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "token no encontrado en la peticion");
            chain.doFilter(request, response);
            return;
        }
        UsernamePasswordAuthenticationToken authentication = getAuthentication(request, response);
        SecurityContextHolder.getContext().setAuthentication(authentication);
        chain.doFilter(request, response);
    }

    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String header = request.getHeader(HttpHeaders.AUTHORIZATION);
        String bearer = "Bearer ";
        String token = null;
        Claims claims = null;
        if (header == null || !header.startsWith(bearer)) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "token no encontrado en la peticion");
            throw new AccessDeniedException("token no encontrado en la peticion");
        }
        try {
            token = header.substring(bearer.length());
            claims = jwtUtil.getClaimsToken(token);
            if (claims == null) {
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "token no valido");
                throw new AccessDeniedException("token no valido");
            }
            return new UsernamePasswordAuthenticationToken(token, token, null);
        } catch (ExpiredJwtException e) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "token expirado");
            throw new AccessDeniedException("token expirado");
        } catch (UnsupportedJwtException | MalformedJwtException e) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "token no admitido");
            throw new AccessDeniedException("token no admitido");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "autenticacion de usuarios no resuelta");
            throw new AccessDeniedException("autenticacion de usuarios no resuelta");
        }
    }
}
