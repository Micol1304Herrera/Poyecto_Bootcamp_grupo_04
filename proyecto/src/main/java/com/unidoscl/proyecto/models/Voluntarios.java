package com.unidoscl.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name="volunteers")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Voluntarios {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Nombre de usuario es requerido!")
	@Size(min = 3, max = 30, message = "Ingresa un username de al menos 3 caracteres")
	private String name;

	@NotEmpty(message = "Correo electrónico es requerido!")
	@Email(message = "Ingresa un email valido")
	private String apellido;

	@NotEmpty(message = "")
	private String region;

	@NotEmpty(message = "")
	private String comuna;

	@NotEmpty(message="")
	@Min(15)
	private int edad;

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

	@OneToMany(mappedBy = "voluntarios", fetch = FetchType.LAZY)
    private List<Voluntariado> voluntariado;
}
