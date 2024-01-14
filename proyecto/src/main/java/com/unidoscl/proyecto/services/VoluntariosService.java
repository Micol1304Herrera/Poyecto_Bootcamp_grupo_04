package com.unidoscl.proyecto.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.unidoscl.proyecto.models.Voluntarios;
import com.unidoscl.proyecto.repositories.VoluntariosRepo;

@Service
public class VoluntariosService {

    //INYECCION DE DEPENDENCIAS
	private final VoluntariosRepo voluntariosRepo;
	public VoluntariosService(VoluntariosRepo vRepo) {
		this.voluntariosRepo = vRepo;
	}

	public Voluntarios encontrarPorEmail(String email) {
		return voluntariosRepo.findByEmail(email);
	}

	public Voluntarios encontrarPorId(Long id) {
		Optional<Voluntarios> voluntario = voluntariosRepo.findById(id);
		if(voluntario.isPresent()) {
			return voluntario.get();
		}
		return null;
	}

	//Registrar voluntario
	public Voluntarios registrarVoluntario(Voluntarios voluntario, BindingResult resultado) {
        Voluntarios voluntarioRegistrar = voluntariosRepo.findByEmail(voluntario.getEmail());

        if(voluntarioRegistrar != null) {
            resultado.rejectValue("email", "Matches", "Email already exists");
        }
        if(!voluntario.getPassword().equals(voluntario.getPasswordConfirm())) {
            resultado.rejectValue("password", "Matches", "Password does not match");
        }
        if(resultado.hasErrors()) {
            return null;
        }
        String hashed = BCrypt.hashpw(voluntario.getPassword(), BCrypt.gensalt());
        voluntario.setPassword(hashed);
        return voluntariosRepo.save(voluntario);
    }

	// AUTENTICACION DEL USUARIO (LOGIN)
	public boolean autenticacionVoluntario(String email, String password, BindingResult resultado) {
		Voluntarios voluntarioRegistrar = voluntariosRepo.findByEmail(email);

		if(voluntarioRegistrar == null) {
			resultado.rejectValue("email", "Matches", "Invalid email");
			return false;

		}else {
			if(BCrypt.checkpw(password, voluntarioRegistrar.getPassword())) {
				return true;
			}else {
				resultado.rejectValue("password", "Matches", "Incorrect password");
				return false;
			}
		}
	}
}
