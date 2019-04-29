package com.lly.controller;

import com.lly.common.EasyUITree;
import com.lly.common.ResponseJsonResult;
import com.lly.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * Author:  lly
 * Date:    2019/4/16 17:15
 * Description:
 */
@Controller
@RequestMapping("/product_category")
public class ProductCategoryController {
    @Autowired
    ProductCategoryService productCategoryService;
    @RequestMapping("/list")
    @ResponseBody
    //@RequestParam是间接数据绑定，将请求中的参数，即下例中的id，间接的绑定到parentId中，若没有则为defaultValue默认值
    public List<EasyUITree> getProductCategoryByParentId(@RequestParam(value = "id", defaultValue = "0") Short parentId) {

        List<EasyUITree> easyUITrees = productCategoryService.findProductCategoryListByParentId(parentId);
        return easyUITrees;
    }
    @RequestMapping("/add")
    @ResponseBody
    public ResponseJsonResult addCategory(short parentId,String name){
        ResponseJsonResult responseJsonResult = productCategoryService.addCategory(parentId,name);
        return responseJsonResult;
    }
    @RequestMapping("/del")
    @ResponseBody
    public ResponseJsonResult deleteCategory(short parentId,short id){
        ResponseJsonResult responseJsonResult = productCategoryService.deleteCategory(parentId,id);
        return responseJsonResult;
    }
}