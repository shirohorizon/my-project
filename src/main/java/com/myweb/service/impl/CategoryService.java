package com.myweb.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.myweb.dao.ICategoryDAO;
import com.myweb.model.CategoryModel;
import com.myweb.model.NewModel;
import com.myweb.service.ICategoryService;

public class CategoryService implements ICategoryService{
	@Inject
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public CategoryModel findOne(long id) {
		return categoryDao.findOne(id);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		return categoryDao.findOneByCode(code);
	}

	@Override
	public void delete(long[] ids) {
		// TODO Auto-generated method stub
		for (long id: ids) {
			categoryDao.delete(id);
		}
	}

	@Override
	public CategoryModel save(CategoryModel categoryModel) {
		// TODO Auto-generated method stub
		categoryModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long newId = categoryDao.save(categoryModel);
		return categoryDao.findOne(newId);
	}

	@Override
	public CategoryModel update(CategoryModel updateCategory) {
		// TODO Auto-generated method stub
		CategoryModel oldNew = categoryDao.findOne(updateCategory.getId());
		updateCategory.setCreatedDate(oldNew.getCreatedDate());
		updateCategory.setCreatedBy(oldNew.getCreatedBy());
		updateCategory.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		categoryDao.update(updateCategory);
		return categoryDao.findOne(updateCategory.getId());
	}

	
}
