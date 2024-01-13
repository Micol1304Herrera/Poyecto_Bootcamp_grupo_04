package com.unidoscl.proyecto.models;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;

@Table(name="regiones")
@Entity
public class Regiones {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @NotNull
    private String regionName;

    // Relacion hacia comunas
    @OneToMany(mappedBy = "regiones", cascade = CascadeType.ALL)
    private List<Comunas> comunas;

    // Relacion hacia voluntariados
    @OneToOne(mappedBy="voluntario", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private Voluntariado voluntariado;

    // Relacion hacia voluntarios
    @OneToOne(mappedBy="regiones", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private Voluntarios voluntarios;

}
