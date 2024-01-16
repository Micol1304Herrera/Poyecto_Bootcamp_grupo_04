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

import com.unidoscl.proyecto.models.Organizacion;
import com.unidoscl.proyecto.services.OrganizacionService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/organizacion")
public class OrganizacionController {
    @Autowired
    private OrganizacionService orgService;

    @GetMapping("/")
    public String index(@ModelAttribute("newVoluntario") Organizacion newOrg, Model model) {
        System.out.println("y acáaa??????");
        return "formorganizacion.jsp";
    }

    @PostMapping("/org-register")
    public String register(@Valid @ModelAttribute("newUser") Organizacion newOrg, BindingResult result, HttpSession session, Model model) {

        //método en servicio
        orgService.register(newOrg, result);

        if(result.hasErrors()) {

            return "formorganizacion.jsp";
        } else {
            //Guardar sesión
            session.setAttribute("userInSession", newOrg);
            return "redirect:/";
        }

    }

    @PostMapping("/login-org")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, RedirectAttributes redirectAttributes, HttpSession session) {

        //enviar email y contraseña y que el servicio verifique si son correctos
        Organizacion userLogin = orgService.login(email, password);

        if(userLogin == null) {
            //Hay error
            redirectAttributes.addFlashAttribute("error_login", "Email/Password incorrect");
            return "redirect:/";
        } else {
            //Guardamos en sesion
            session.setAttribute("userInSession", userLogin);
            return "redirect:/org";
        }
    }

    @GetMapping("/logout-org")
    public String logout(HttpSession session) {
        session.removeAttribute("userInSession");
        return "redirect:/";
    }

    @PostMapping("/org")
    public String ideas(){
        return "crearvoluntariado.jsp";
    }
}
