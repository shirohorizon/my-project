package com.myweb.dao;

import java.util.List;

import com.myweb.model.NewModel;

public interface INewDAO extends GenericDAO<NewModel> {
	List<NewModel> findAll();
	NewModel findOne(Long id);
	void delete(Long id);
	void update(NewModel updateNew);
	Long save(NewModel newModel);
}
