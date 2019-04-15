package com.lly.service;

import com.lly.common.EasyUITree;

import java.util.List;

public interface ProductCategoryService {
    List<EasyUITree> findProductCategoryListByParentId(Short parentid);
}
