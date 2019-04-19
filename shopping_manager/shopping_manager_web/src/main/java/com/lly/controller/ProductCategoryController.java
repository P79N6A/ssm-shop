package com.lly.controller;

import com.lly.common.EasyUITree;
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
    public List<EasyUITree> getProductCategoryByParentId(@RequestParam(value = "id", defaultValue = "0") Short parentId) {

        List<EasyUITree> easyUITrees = productCategoryService.findProductCategoryListByParentId(parentId);
        return easyUITrees;
    }

}