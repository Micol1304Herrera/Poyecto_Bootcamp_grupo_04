package com.unidoscl.proyecto.services;

import org.springframework.stereotype.Service;

import com.unidoscl.proyecto.models.Voluntariado;
import com.unidoscl.proyecto.repositories.VoluntariadosRepo;

@Service
public class VoluntariadosService {

    private final VoluntariadosRepo voluntariadosRepo;

    public VoluntariadosService(VoluntariadosRepo voluntariadosRepo) {
        this.voluntariadosRepo = voluntariadosRepo;
    }

    public Voluntariado crearVoluntariado(Voluntariado voluntariado) {
        return voluntariadosRepo.save(voluntariado);
    }

}