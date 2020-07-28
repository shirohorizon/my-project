package com.myweb.model;

import java.sql.Timestamp;

public class UserModel extends AbstractModel<UserModel> {
	
	private String userName;
	private String fullName;
	private String password;
	private int status;
	private Long roleId;
	private Timestamp onlineDate;
	private RoleModel role = new RoleModel();
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public RoleModel getRole() {
		return role;
	}
	public void setRole(RoleModel role) {
		this.role = role;
	}
	public Timestamp getOnlineDate() {
		return onlineDate;
	}
	public void setOnlineDate(Timestamp onlineDate) {
		this.onlineDate = onlineDate;
	}
}
