package com.lly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FreemarkerTestController {
    @RequestMapping("/hello")
    public String testHello(Model model){
        model.addAttribute("msg","lly");
        return "hello";
    }
}
