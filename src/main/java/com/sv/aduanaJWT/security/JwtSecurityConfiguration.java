/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.aduanaJWT.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

/**
 *
 * @author Moises
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class JwtSecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public JwtAutorizacion jwtAutorizacion() throws Exception {
        JwtAutorizacion jwtAutorizacion = new JwtAutorizacion(authenticationManagerBean());
        return jwtAutorizacion;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        String[] patterns = new String[]{"/", "/aduanaJWT/"};
        http
                .csrf().disable()
                .requestMatchers()
                .antMatchers(patterns)
                .and()
                .authorizeRequests()
                .antMatchers(patterns).permitAll()
                .anyRequest().authenticated()
                .and()
                .cors()
                .and()
                .addFilter(jwtAutorizacion())
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .formLogin().disable()
                .anonymous().disable()
                .rememberMe().disable()
                .httpBasic().disable()
                .logout().disable();

    }

}
