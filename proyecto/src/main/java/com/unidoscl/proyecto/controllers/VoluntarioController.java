package com.unidoscl.proyecto.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.unidoscl.proyecto.models.Voluntarios;
import com.unidoscl.proyecto.services.VoluntariosService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/voluntario")
public class VoluntarioController {
    @Autowired
    private VoluntariosService voluntarioService;

    @GetMapping("/")
    public String index(@ModelAttribute("newVoluntario") Voluntarios newVoluntario, Model model) {
        System.out.println("y acáaa??????");

        return "categorias.jsp";
    }

    @PostMapping("/v-register")
    public String register(@Valid @ModelAttribute("newUser") Voluntarios newVoluntario, BindingResult result, HttpSession session, Model model) {

        //método en servicio
        voluntarioService.register(newVoluntario, result);

        if(result.hasErrors()) {

            return "formvoluntario.jsp";
        } else {
            //Guardar sesión
            session.setAttribute("userInSession", newVoluntario);
            return "redirect:/";
        }

    }

    @PostMapping("/login-v")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, RedirectAttributes redirectAttributes, HttpSession session) {

        //enviar email y contraseña y que el servicio verifique si son correctos
        Voluntarios userLogin = voluntarioService.login(email, password);

        if(userLogin == null) {
            //Hay error
            redirectAttributes.addFlashAttribute("error_login", "Email/Password incorrect");
            return "redirect:/";
        } else {
            //Guardamos en sesion
            session.setAttribute("userInSession", userLogin);
            return "redirect:/voluntarios";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("userInSession");
        return "redirect:/";
    }

    @PostMapping("/voluntarios")
    public String ideas(){
        return "perfilvoluntarios.jsp";
    }

}
