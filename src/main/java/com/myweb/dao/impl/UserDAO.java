package com.myweb.dao.impl;

import java.util.List;

import com.myweb.dao.IUserDAO;
import com.myweb.mapper.UserMapper;
import com.myweb.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO{

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE username = ? AND password = ? AND status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long save(UserModel userModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO user");
		sql.append(" (username, password, fullname, status, roleid, onlinedate, createddate, createdby)");
		sql.append(" VALUES(?, ?, ?, ?, ?, ?, ?, ?)");		
		return insert(sql.toString(), userModel.getUserName(), userModel.getPassword(),
				userModel.getFullName(),userModel.getStatus(), userModel.getRoleId(), userModel.getOnlineDate(), userModel.getCreatedDate(), userModel.getCreatedBy());
	}

	@Override
	public UserModel findById(Long id) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE u.id = ?");
		List<UserModel> news = query(sql.toString(), new UserMapper(), id);
		return news.isEmpty() ? null : news.get(0);
	}
	
}
