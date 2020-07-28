package com.myweb.service;

import com.myweb.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	UserModel save(UserModel userModel);
}
