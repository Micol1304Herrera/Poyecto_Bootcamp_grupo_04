package com.unidoscl.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unidoscl.proyecto.models.Voluntariado;
import com.unidoscl.proyecto.services.VoluntariadosService;

@Controller
@RequestMapping("/voluntariados")
public class VoluntariadoController {

private final VoluntariadosService voluntariadosService;

    public VoluntariadoController(VoluntariadosService voluntariadosService) {
        this.voluntariadosService = voluntariadosService;
    }

    @PostMapping("/crear")
    public Voluntariado crearVoluntariado(@RequestBody Voluntariado voluntariado) {
        return voluntariadosService.crearVoluntariado(voluntariado);
    }
}
