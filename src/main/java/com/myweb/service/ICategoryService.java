package com.myweb.service;

import java.util.List;

import com.myweb.model.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> findAll();
	CategoryModel findOne(long id);
	CategoryModel findOneByCode(String code);
	void delete(long[] ids);
	CategoryModel save(CategoryModel categoryModel);
	CategoryModel update(CategoryModel updateCategory);
}
