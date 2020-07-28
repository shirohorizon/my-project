package com.myweb.dao;

import java.util.List;

import com.myweb.model.CategoryModel;
import com.myweb.model.NewModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
	CategoryModel findOne(long id);
	CategoryModel findOneByCode(String code);
	void delete(Long id);
	void update(CategoryModel updateCategory);
	Long save(CategoryModel categoryModel);
}
