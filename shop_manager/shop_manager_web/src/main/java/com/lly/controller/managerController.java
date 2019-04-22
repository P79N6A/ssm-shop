package com.lly.controller;

import com.lly.common.EasyUITree;
import com.lly.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/*
 * manager页面跳转控制
 *
 */
@Controller
public class managerController {
    @Autowired
    ProductCategoryService productCategoryService;
    @RequestMapping("/manager/{page}")
    public String getPage(@PathVariable String page){
        return page;
    }
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/manager/product_add")
    public String findCategorys(HttpServletRequest request){
        List<EasyUITree> categorys = productCategoryService.findProductCategoryListByParentId((short)0);
       request.getSession().setAttribute("categorys",categorys);
        return "product_add";
    }
}
