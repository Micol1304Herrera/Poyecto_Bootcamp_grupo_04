package com.unidoscl.proyecto.models;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class loginVoluntario {

    @NotEmpty(message = "El email es requerido")
	@Email(message = "Por favor ingrese un email valido")
	private String email;

	@NotEmpty(message = "La contraseña es requerida")
	@Size(min = 8, max = 128, message = "Debe ser de al menos 8 caracteres")
	private String password;
}
