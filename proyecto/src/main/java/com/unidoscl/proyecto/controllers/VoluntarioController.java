package com.unidoscl.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.unidoscl.proyecto.models.LoginVoluntario;
import com.unidoscl.proyecto.models.Voluntarios;
import com.unidoscl.proyecto.services.VoluntariosService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class VoluntarioController {
    private final VoluntariosService voluntariosService;

    public VoluntarioController(VoluntariosService voluntariosService) {
        this.voluntariosService = voluntariosService;
    }

    @GetMapping("/")
    public String index(Model modelo) {
        modelo.addAttribute("registro", new Voluntarios());
        modelo.addAttribute("login", new LoginVoluntario());

        return "index.jsp";
    }

    @PostMapping("/register")
    public String registro(@Valid @ModelAttribute("registro") Voluntarios newVoluntario,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("login", new LoginVoluntario());
            return "index.jsp";

        }
        Voluntarios registrarVoluntario = voluntariosService.registrarVoluntario(newVoluntario, resultado);

        if (registrarVoluntario != null) {
            modelo.addAttribute("login", new LoginVoluntario());
            modelo.addAttribute("registro", new Voluntarios());
            modelo.addAttribute("registroExitoso", true);
            return "index.jsp";
        } else {
            modelo.addAttribute("login", new LoginVoluntario());
            return "index.jsp";
        }
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("login") LoginVoluntario loginvoluntario,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("registro", new Voluntarios());
            return "index.jsp";

        }
        if (voluntariosService.autenticacionVoluntario(loginvoluntario.getEmail(), loginvoluntario.getPassword(), resultado)) {
            Voluntarios usuarioLog = voluntariosService.encontrarPorEmail(loginvoluntario.getEmail());
            sesion.setAttribute("userID", usuarioLog.getId());
            return "redirect:/show";
        } else {
            modelo.addAttribute("registro", new Voluntarios());
            return "index.jsp";
        }

    }

    @GetMapping("/logout")
    public String logout(HttpSession sesion) {
        sesion.invalidate();
        return "redirect:/";
    }

}