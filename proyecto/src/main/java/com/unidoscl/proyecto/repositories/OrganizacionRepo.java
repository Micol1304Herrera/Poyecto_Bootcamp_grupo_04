package com.unidoscl.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.unidoscl.proyecto.models.Voluntariado;

@Repository
public interface OrganizacionRepo extends CrudRepository<Voluntariado, Long> {

}
