package com.myweb.dao;

import com.myweb.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	Long save(UserModel userModel);
	UserModel findById(Long id);
}
