package com.bostonwiseleasing.leasingapi.controllers;

import com.bostonwiseleasing.leasingapi.entities.Renter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/home")
    public String getHome(Model model){
        model.addAttribute("renter", new Renter());
        return "home";
    }

}
