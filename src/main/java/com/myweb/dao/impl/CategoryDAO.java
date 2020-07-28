package com.myweb.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.myweb.mapper.CategoryMapper;
import com.myweb.model.CategoryModel;
import com.myweb.dao.ICategoryDAO;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO{
	@Override
	public CategoryModel findOne(long id) {
		String sql = "SELECT * FROM category WHERE id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

    @Override
    public CategoryModel findOneByCode(String code) {
		String sql = "SELECT * FROM category WHERE code = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), code);
		return category.isEmpty() ? null : category.get(0);
    }

	@Override
	public List<CategoryModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM category");
		return query(sql.toString(), new CategoryMapper());
	}
	
	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM category WHERE id = ?";
		update(sql, id);
	}

	@Override
	public void update(CategoryModel updateCategory) {
		// TODO Auto-generated method stub
		StringBuilder sql = new StringBuilder("UPDATE category SET name = ?, code = ?,");
		sql.append(" createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? WHERE id = ?");
		update(sql.toString(),updateCategory.getName(), updateCategory.getCode(), updateCategory.getCreatedDate(), 
				updateCategory.getCreatedBy(), updateCategory.getModifiedDate(), 
				updateCategory.getModifiedBy(), updateCategory.getId());
	}

	@Override
	public Long save(CategoryModel categoryModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO category (name, code,");
		sql.append("createddate, createdby)");
		sql.append(" VALUES(?, ?, ?, ?)");
		return insert(sql.toString(),categoryModel.getName(), categoryModel.getCode(),
				categoryModel.getCreatedDate(), categoryModel.getCreatedBy());
	}
}
