package com.lly.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lly.common.EasyGrid;
import com.lly.common.ResponseJsonResult;
import com.lly.mapper.ProductMapper;
import com.lly.pojo.Product;
import com.lly.pojo.ProductExample;
import com.lly.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductMapper productMapper;

    @Override
    public ResponseJsonResult saveProduct(Product product) {

        product.setStatus((byte) 1);
        productMapper.insert(product);

        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
        responseJsonResult.setStatus(200);

        return responseJsonResult;
    }

    @Override
    public EasyGrid listProduct(int pages, int rows) {

        ProductExample productExample = new ProductExample();
        PageHelper.startPage(pages,rows);
        List<Product> productList = productMapper.selectByExample(productExample);

        PageInfo<Product> pageInfo = new PageInfo<>(productList);

        EasyGrid easyGrid = new EasyGrid();
        easyGrid.setTotal((int) pageInfo.getTotal());
        easyGrid.setRows(productList);

        return easyGrid;
    }
}
