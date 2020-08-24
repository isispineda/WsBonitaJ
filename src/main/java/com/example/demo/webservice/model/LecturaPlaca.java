/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.webservice.model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author Moises
 */
@Entity
@Table(name = "lecturaplaca")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class LecturaPlaca implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;

    @Basic(optional = false)
    @Column(name = "processId")
    private Long processId;

    @Basic(optional = false)
    @Column(name = "numplaca")
    private String numplaca;

    @Basic(optional = false)
    @Column(name = "procesado", length = 2)
    private String procesado;

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 71 * hash + Objects.hashCode(this.id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final LecturaPlaca other = (LecturaPlaca) obj;
        return true;
    }

    @Override
    public String toString() {
        return "LecturaPlaca{" + "id=" + id + '}';
    }

}
