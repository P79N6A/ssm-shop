package com.lly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product_category")
public class ProductCategoryController {
    @RequestMapping("/list")
    public String product_cat_list(){
        return "product_cat_list";
    }
}
