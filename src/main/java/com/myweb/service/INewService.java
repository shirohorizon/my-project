package com.myweb.service;

import java.util.List;

import com.myweb.model.NewModel;

public interface INewService {
	List<NewModel> findAll();
	NewModel findOne(Long id);
	void delete(long[] ids);
	NewModel save(NewModel newModel);
	NewModel update(NewModel updateNew);
}
