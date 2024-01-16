package com.unidoscl.proyecto.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.unidoscl.proyecto.models.Voluntarios;
import com.unidoscl.proyecto.repositories.VoluntariosRepo;

@Service
public class VoluntariosService {

	@Autowired
    private VoluntariosRepo voluntariosRepo;

    public Voluntarios saveVoluntario(Voluntarios u){
        return voluntariosRepo.save(u);
    }

    public Voluntarios findUserById(Long id){
        return voluntariosRepo.findById(id).orElse(null);
    }

    public Voluntarios register(Voluntarios newVoluntario, BindingResult result) {

        String email = newVoluntario.getEmail();
        Voluntarios isUser = voluntariosRepo.findByEmail(email); //NULL o Objeto Usuario
        if(isUser != null) {
            result.rejectValue("email", "Unique", "The email is already in use");
        }

        String password = newVoluntario.getPassword();
        String confirm = newVoluntario.getPasswordConfirm();
        if(!password.equals(confirm)) { //! -> Lo contrario
            result.rejectValue("confirm", "Matches", "The passwords don't match");
        }

        if(result.hasErrors()) {
            return null;
        } else {
            String pass_encript = BCrypt.hashpw(newVoluntario.getPassword(), BCrypt.gensalt());
            newVoluntario.setPassword(pass_encript);
            return voluntariosRepo.save(newVoluntario);
        }

    }
    public Voluntarios login(String email, String password) {

        Voluntarios userExists = voluntariosRepo.findByEmail(email); //NULL o Objeto de User
        if(userExists == null) {
            return null;
        }

        if(BCrypt.checkpw(password, userExists.getPassword())) {
            return userExists;
        } else {
            return null;
        }

    }
}
