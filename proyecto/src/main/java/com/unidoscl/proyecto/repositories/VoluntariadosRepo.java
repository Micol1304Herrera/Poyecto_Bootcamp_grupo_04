package com.unidoscl.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;

import com.unidoscl.proyecto.models.Voluntariado;

public interface VoluntariadosRepo extends CrudRepository<Voluntariado, Long> {

    Voluntariado findByNameVoluntariado(String nVoluntariado);
}
