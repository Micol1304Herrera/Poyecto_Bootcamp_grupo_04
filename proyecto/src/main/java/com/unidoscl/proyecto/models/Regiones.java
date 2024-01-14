package com.unidoscl.proyecto.models;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name="regiones")
@Entity
public class Regiones {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @NotNull
    private String regionName;

    // Relacion hacia voluntariados
    @OneToOne(mappedBy="regiones", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private Voluntariado voluntariado;

    // Relacion hacia voluntarios
    @OneToOne(mappedBy = "regiones", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Voluntarios voluntario; // Cambié el nombre de la variable para que sea singular

}
