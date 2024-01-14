package com.unidoscl.proyecto.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.repositories.OrganizacionRepo;

@Service
public class OrganizacionService {

    //INYECCION DE DEPENDENCIAS
	private final OrganizacionRepo orgRepo;

	public OrganizacionService(OrganizacionRepo oRepo) {
		this.orgRepo = oRepo;
	}

	public Organizacion encontrarPorEmail(String email) {
		return orgRepo.findByEmail(email);
	}

	public Organizacion encontrarPorId(Long id) {
		Optional<Organizacion> org = orgRepo.findById(id);
		if(org.isPresent()) {
			return org.get();
		}
		return null;
	}

	//Registrar organizacion
	public Organizacion registrarOrg(Organizacion org, BindingResult resultado) {
        Organizacion orgRegistrar = orgRepo.findByEmail(org.getEmail());

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
        return orgRepo.save(org);
    }

	// Autenticacion de la organizacion
	public boolean autenticacionOrg(String email, String password, BindingResult resultado) {
		Organizacion orgRegistrar = orgRepo.findByEmail(email);

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
