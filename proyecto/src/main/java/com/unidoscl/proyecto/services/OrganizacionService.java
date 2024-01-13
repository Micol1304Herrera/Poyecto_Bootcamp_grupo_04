package com.unidoscl.proyecto.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.validation.BindingResult;

import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.repositories.OrganizacionRepo;

public class OrganizacionService {

    //INYECCION DE DEPENDENCIAS
	private final OrganizacionRepo oRepo;
	public OrganizacionService(OrganizacionRepo oRepo) {
		this.oRepo = oRepo;
	}

	public Organizacion encontrarPorEmail(String email) {
		return oRepo.findByEmail(email);
	}

	public Organizacion encontrarPorId(Long id) {
		Optional<Organizacion> org = oRepo.findById(id);
		if(org.isPresent()) {
			return org.get();
		}
		return null;
	}

	//Registrar organizacion
	public Organizacion registrarOrg(Organizacion org, BindingResult resultado) {
        Organizacion orgRegistrar = oRepo.findByEmail(org.getEmail());

        if(orgRegistrar != null) {
            resultado.rejectValue("email", "Matches", "Email already exists");
        }
        if(!org.getPassword().equals(org.getPasswordConfirm())) {
            resultado.rejectValue("password", "Matches", "Password does not match");
        }
        if(resultado.hasErrors()) {
            return null;
        }
        String hashed = BCrypt.hashpw(org.getPassword(), BCrypt.gensalt());
        org.setPassword(hashed);
        return oRepo.save(org);
    }

	// Autenticacion de la organizacion
	public boolean autenticacionOrg(String email, String password, BindingResult resultado) {
		Organizacion orgRegistrar = oRepo.findByEmail(email);

		if(orgRegistrar == null) {
			resultado.rejectValue("email", "Matches", "Invalid email");
			return false;

		}else {
			if(BCrypt.checkpw(password, orgRegistrar.getPassword())) {
				return true;
			}else {
				resultado.rejectValue("password", "Matches", "Incorrect password");
				return false;
			}
		}
	}
}
