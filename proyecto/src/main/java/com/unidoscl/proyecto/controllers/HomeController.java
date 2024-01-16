package com.unidoscl.proyecto.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String raiz(){
        System.out.println("Llegoo");
        return "iniciopag.jsp";
    }
}