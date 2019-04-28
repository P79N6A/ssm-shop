package com.lly.controller;

import com.lly.common.ResponseJsonResult;
import com.lly.pojo.Product;
import com.lly.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping("product_save")
    @ResponseBody
    public ResponseJsonResult saveProduct(Product product){
        ResponseJsonResult responseJsonResult = productService.saveProduct(product);
        return responseJsonResult;
    }
}
