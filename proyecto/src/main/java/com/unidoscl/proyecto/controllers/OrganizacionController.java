package com.unidoscl.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.unidoscl.proyecto.models.LoginOrg;
import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.services.OrganizacionService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class OrganizacionController {
    private final OrganizacionService orgService;

    public OrganizacionController(OrganizacionService orgService) {
        this.orgService = orgService;
    }

    @GetMapping("/organizacion")
    public String index(Model modelo) {
        modelo.addAttribute("registro", new Organizacion());
        modelo.addAttribute("login", new LoginOrg());

        return "formorganizacion.jsp";
    }

    @PostMapping("/registerOrganizacion")
    public String registro(@Valid @ModelAttribute("registro") Organizacion nuevaOrg,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("login", new LoginOrg());
            return "formorganizacion.jsp";

        }
        Organizacion orgRegistrar = orgService.registrarOrg(nuevaOrg, resultado);

        if (orgRegistrar != null) {
            modelo.addAttribute("login", new LoginOrg());
            modelo.addAttribute("registro", new Organizacion());
            modelo.addAttribute("registroExitoso", true);
            return "formorganizacion.jsp";
        } else {
            modelo.addAttribute("login", new LoginOrg());
            return "formorganizacion.jsp";
        }
    }

    @PostMapping("/loginOrganizacion")
    public String login(@Valid @ModelAttribute("login") LoginOrg loginorg,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("registro", new Organizacion());
            return "formorganizacion.jsp";

        }
        if (orgService.autenticacionOrg(loginorg.getEmail(), loginorg.getPassword(), resultado)) {
            Organizacion usuarioLog = orgService.encontrarPorEmail(loginorg.getEmail());
            sesion.setAttribute("userID", usuarioLog.getId());
            return "redirect:/perfilOrg";
        } else {
            modelo.addAttribute("registro", new Organizacion());
            return "formorganizacion.jsp";
        }

    }

    @GetMapping("/logoutOrganizacion")
    public String logout(HttpSession sesion) {
        sesion.invalidate();
        return "redirect:/";
    }
}
