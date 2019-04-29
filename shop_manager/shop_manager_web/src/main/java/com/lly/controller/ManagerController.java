package com.lly.controller;

import com.lly.common.EasyUITree;
import com.lly.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/*
 * manager页面跳转控制
 *
 */
@Controller
public class ManagerController {
    @Autowired
    ProductCategoryService productCategoryService;
    //下面的映射就是Rest风格，参数写在{}中，分别用put、delete、post、get对应增删改查的查询，@PathVariable用于接收并绑定参数
    @RequestMapping(value = "/manager/{page}",method = RequestMethod.GET)
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
