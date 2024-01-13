package com.unidoscl.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.unidoscl.proyecto.models.LoginOrg;
import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.models.Voluntariado;
import com.unidoscl.proyecto.repositories.VoluntariadosRepo;
import com.unidoscl.proyecto.services.OrganizacionService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class OrganizacionController {
    private final OrganizacionService orgService;
    private final VoluntariadosRepo vRepo;

    public OrganizacionController(OrganizacionService orgService, VoluntariadosRepo vRepo) {
        this.orgService = orgService;
        this.vRepo = vRepo;
    }

    @GetMapping("/")
    public String index(Model modelo) {
        modelo.addAttribute("registro", new Organizacion());
        modelo.addAttribute("login", new LoginOrg());

        return "index.jsp";
    }

    @PostMapping("/register")
    public String registro(@Valid @ModelAttribute("registro") Organizacion nuevaOrg,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("login", new LoginOrg());
            return "index.jsp";

        }
        Organizacion orgRegistrar = orgService.registrarOrg(nuevaOrg, resultado);

        if (orgRegistrar != null) {
            modelo.addAttribute("login", new LoginOrg());
            modelo.addAttribute("registro", new Organizacion());
            modelo.addAttribute("registroExitoso", true);
            return "index.jsp";
        } else {
            modelo.addAttribute("login", new LoginOrg());
            return "index.jsp";
        }
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("login") LoginOrg loginorg,
            BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            modelo.addAttribute("registro", new Organizacion());
            return "index.jsp";

        }
        if (orgService.autenticacionOrg(loginorg.getEmail(), loginorg.getPassword(), resultado)) {
            Organizacion usuarioLog = orgService.encontrarPorEmail(loginorg.getEmail());
            sesion.setAttribute("userID", usuarioLog.getId());
            return "redirect:/show";
        } else {
            modelo.addAttribute("registro", new Organizacion());
            return "index.jsp";
        }

    }

    @GetMapping("/add")
    public String mostrarNuevoFormulario(Model modelo) {
        modelo.addAttribute("nuevoVoluntariado", new Voluntariado());
        return "craervoluntariado.jsp";
    }

    @PostMapping("/addVoluntariado")
    public String addVoluntariado(@Valid @ModelAttribute("nuevoVoluntariado") Voluntariado nuevoVoluntariado, BindingResult resultado, Model modelo, HttpSession sesion) {

        if (resultado.hasErrors()) {
            return "craervoluntariado.jsp";
        }

        // Obtener org actual
        Long userId = (Long) sesion.getAttribute("userID");
        Organizacion org = orgService.encontrarPorId(userId);

        if (org != null) {
            // Asignar el usuario actual como usuarioAgregador del nuevo show
            nuevoVoluntariado.setOrgAgregadora(org);

            // Verificar si ya existe un show con el mismo nombre
            Voluntariado voluntariadoExistentePorNombre = vRepo.findByNameVoluntariado(nuevoVoluntariado.getNameVoluntariado());
            if (voluntariadoExistentePorNombre != null) {
                resultado.rejectValue("nameVoluntariado", "error.nuevoVoluntariado", "Este voluntariado ya ha sido agregado");
                return "craervoluntariado.jsp";
            }

            // Verificar si el título ya existe
            Voluntariado voluntariadoExistentePorTitulo = vRepo.findByNameVoluntariado(nuevoVoluntariado.getNameVoluntariado());
            if (voluntariadoExistentePorTitulo != null) {
                resultado.rejectValue("nameVoluntariado", "error.nuevoShow", "Ya existe un voluntariado con este título");
                return "craervoluntariado.jsp";
            }

            // Guardar el nuevo voluntariado
            vRepo.save(nuevoVoluntariado);

            // Redirigir a la página de volntariados después de guardar exitosamente
            return "redirect:/voluntariados";
        }
        // Manejar el caso cuando la organizacion no está autenticada
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpSession sesion) {
        sesion.invalidate();
        return "redirect:/";
    }
}
