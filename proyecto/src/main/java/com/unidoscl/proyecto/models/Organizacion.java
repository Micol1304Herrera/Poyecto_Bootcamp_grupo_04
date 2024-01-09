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
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="org")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Organizacion {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @NotEmpty(message = "")
	private String nameOrganizacion;

    @NotEmpty(message="")
	private String rutEmpresa;

    @NotEmpty(message = "El correo electrónico es requerido!")
	@Email(message = "Ingresa un email valido")
	private String emailOrg;

    @NotEmpty(message = "Password es requerido")
	@Size(min = 8, max = 128, message = "Password debe contener al menos 8 caracteres")
	private String password;

    @Transient
	@NotEmpty(message = "Password es requerido")
	@Size(min = 8, max = 128, message = "Password debe contener al menos 8 caracteres")
	private String passwordConfirm;

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
