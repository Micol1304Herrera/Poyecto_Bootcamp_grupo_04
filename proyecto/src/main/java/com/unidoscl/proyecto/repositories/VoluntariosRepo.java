package com.unidoscl.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;

import com.unidoscl.proyecto.models.Voluntarios;

public interface VoluntariosRepo extends CrudRepository<Voluntarios, Long> {

    Voluntarios findByEmail(String email);
}
