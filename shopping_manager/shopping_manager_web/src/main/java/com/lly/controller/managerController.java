package com.lly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
/*
 * manager页面跳转控制
 *
 */
@Controller
public class managerController {
    @RequestMapping("/manager/{page}")
    public String getPage(@PathVariable String page){
        return page;
    }
    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
