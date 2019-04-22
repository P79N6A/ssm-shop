package com.lly.service.impl;

import com.lly.common.EasyUITree;
import com.lly.common.ResponseJsonResult;
import com.lly.mapper.ProductCategoryMapper;
import com.lly.pojo.ProductCategory;
import com.lly.pojo.ProductCategoryExample;
import com.lly.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {
    @Autowired
    private ProductCategoryMapper productCategoryMapper;
    @Override
    public List<EasyUITree> findProductCategoryListByParentId(Short parentid) {
        ProductCategoryExample productCategoryExample=new ProductCategoryExample();
        ProductCategoryExample.Criteria criteria = productCategoryExample.createCriteria();
        criteria.andParentIdEqualTo(parentid);
        List<ProductCategory> productCategoryList = productCategoryMapper.selectByExample(productCategoryExample);

        List<EasyUITree> easyUITrees = new ArrayList<>(productCategoryList.size());

        for (ProductCategory productCategory:productCategoryList) {

            EasyUITree easyuiTree = new EasyUITree();

            easyuiTree.setId(productCategory.getId());
            easyuiTree.setText(productCategory.getName());
            easyuiTree.setState(productCategory.getParentId()==0?"closed":"open");
            easyuiTree.setAttributes(productCategory.getParentId()+"");

            easyUITrees.add(easyuiTree);
        }

        return easyUITrees;
    }

    @Override
    public ResponseJsonResult addCategory(short parentId, String name) {
        ProductCategory productCategory=new ProductCategory();
        productCategory.setParentId(parentId);
        productCategory.setName(name);
        productCategoryMapper.insert(productCategory);
        ResponseJsonResult responseJsonResult=new ResponseJsonResult();
        responseJsonResult.setMsg(productCategory.getId()+"");
        return responseJsonResult;
    }

    @Override
    public ResponseJsonResult deleteCategory(short parentId, short id) {
        ProductCategoryExample productCategoryExample=new ProductCategoryExample();
        ProductCategoryExample.Criteria criteria= productCategoryExample.createCriteria();
        if(parentId==0) {
            criteria.andIdEqualTo(id);
            ProductCategoryExample.Criteria criteria1=productCategoryExample.createCriteria();
            criteria1.andParentIdEqualTo(id);
            productCategoryExample.or(criteria1);
        }else{
           criteria.andIdEqualTo(id);
        }
        productCategoryMapper.deleteByExample(productCategoryExample);
        ResponseJsonResult responseJsonResult=new ResponseJsonResult();
        responseJsonResult.setStatus(200);
        responseJsonResult.setMsg("success");
        return responseJsonResult;
    }
}
