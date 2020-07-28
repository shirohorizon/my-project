package com.myweb.service.impl;

import java.sql.Timestamp;

import javax.inject.Inject;

import com.myweb.dao.IUserDAO;
import com.myweb.model.UserModel;
import com.myweb.service.IUserService;

public class UserService implements IUserService{

	@Inject
	private IUserDAO userDao;
	
	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDao.findByUserNameAndPasswordAndStatus(userName, password, status);
	}

	@Override
	public UserModel save(UserModel userModel) {
		userModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		userModel.setOnlineDate(new Timestamp(System.currentTimeMillis()));
		userModel.setCreatedBy(userModel.getUserName());
		userModel.setRoleId(3L);
		userModel.setStatus(1);
		Long userId = userDao.save(userModel);
		return userDao.findById(userId);
	}
	
}
