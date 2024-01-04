package com.unidoscl.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.unidoscl.proyecto.models.Empresas;

@Repository
public interface EmpresasRepo extends CrudRepository<Empresas, Long> {
    
}
