package com.unidoscl.proyecto.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.repositories.OrganizacionRepo;


@Service
public class OrganizacionService {

@Autowired
    private OrganizacionRepo orgRepo;

    public Organizacion saveOrg(Organizacion o){
        return orgRepo.save(o);
    }

    public Organizacion findOrgById(Long id){
        return orgRepo.findById(id).orElse(null);
    }

    public Organizacion register(Organizacion newOrg, BindingResult result) {

        String email = newOrg.getEmail();
        Organizacion isOrg = orgRepo.findByEmail(email); //NULL o Objeto Usuario
        if(isOrg != null) {
            result.rejectValue("email", "Unique", "The email is already in use");
        }

        String password = newOrg.getPassword();
        String confirm = newOrg.getPasswordConfirm();
        if(!password.equals(confirm)) { //! -> Lo contrario
            result.rejectValue("confirm", "Matches", "The passwords don't match");
        }

        if(result.hasErrors()) {
            return null;
        } else {
            String pass_encript = BCrypt.hashpw(newOrg.getPassword(), BCrypt.gensalt());
            newOrg.setPassword(pass_encript);
            return orgRepo.save(newOrg);
        }

    }
    public Organizacion login(String email, String password) {

        Organizacion userExists = orgRepo.findByEmail(email); //NULL o Objeto de User
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
