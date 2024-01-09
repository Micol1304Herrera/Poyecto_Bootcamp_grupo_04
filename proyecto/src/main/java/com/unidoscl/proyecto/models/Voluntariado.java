package com.unidoscl.proyecto.models;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name="volunteering")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Voluntariado {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Nombre de usuario es requerido!")
	@Size(min = 3, max = 30, message = "Ingresa un username de al menos 3 caracteres")
	private String nameVoluntariado;

	@NotEmpty(message = "Selecciona un campo")
	private String region;

	@NotEmpty(message = "Selecciona un campo")
	private String comuna;

	@NotEmpty(message= "La direccion es obligatoria")
	private String direccion;

	@NotEmpty(message="Ingresa el numero de voluntarios que se requerirá")
	@Min(1)
	private int nVoluntarios;

	@NotEmpty(message = "Selecciona un campo")
	private String sector;

	@NotEmpty(message = "El nombre de la organizacion es requerido")
	private String organizacion;

	@NotEmpty(message = "Ingresa el objetivo del voluntariado (Qué cambio quieren lograr)")
	private String objetivo;

	//@Future
	@Future
	@NotEmpty(message="El campo es obligatorio")
	private Date duracion;

	@NotEmpty(message="Ingresa un numero de telefono")
	private String numero;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

    @PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}
