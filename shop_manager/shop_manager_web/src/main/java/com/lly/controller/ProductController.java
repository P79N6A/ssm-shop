package com.lly.controller;

import com.lly.common.EasyGrid;
import com.lly.common.ResponseJsonResult;
import com.lly.pojo.Product;
import com.lly.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class ProductController {
    @Autowired
    ProductService productService;
    @RequestMapping("/product/list")
    @ResponseBody
    public EasyGrid productList(@RequestParam(value="page",defaultValue = "1" )int page,@RequestParam(value="rows",defaultValue = "10" )int rows){
        EasyGrid easyGrid = productService.listProduct(page,rows);
        return easyGrid;
    }
    @RequestMapping("/product_save")
    @ResponseBody
    public ResponseJsonResult saveProduct(Product product){
        ResponseJsonResult responseJsonResult = productService.saveProduct(product);
        return responseJsonResult;
    }
}
