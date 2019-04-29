package com.lly.service;


import com.lly.common.EasyGrid;
import com.lly.common.ResponseJsonResult;
import com.lly.pojo.Product;

public interface ProductService {
    ResponseJsonResult saveProduct(Product product);
    EasyGrid listProduct(int pages, int rows);
}
