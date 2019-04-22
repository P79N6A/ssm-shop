package com.lly.service;

import com.lly.common.EasyUITree;
import com.lly.common.ResponseJsonResult;

import java.util.List;

public interface ProductCategoryService {
    List<EasyUITree> findProductCategoryListByParentId(Short parentid);

    ResponseJsonResult addCategory(short parentId,String name);

    ResponseJsonResult deleteCategory(short parentId,short id);
}
