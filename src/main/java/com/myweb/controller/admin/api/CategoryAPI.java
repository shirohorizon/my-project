package com.myweb.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.model.UserModel;
import com.myweb.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myweb.model.CategoryModel;
import com.myweb.model.NewModel;
import com.myweb.service.ICategoryService;
import com.myweb.service.INewService;
import com.myweb.utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-category"})
public class CategoryAPI extends HttpServlet{

	private static final long serialVersionUID = 7010216929081912385L;
	
	@Inject ICategoryService categoryService;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		CategoryModel categoryModel =  HttpUtil.of(request.getReader()).toModel(CategoryModel.class);
		categoryModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		categoryModel = categoryService.save(categoryModel);
		mapper.writeValue(response.getOutputStream(), categoryModel);
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		CategoryModel updateCategory =  HttpUtil.of(request.getReader()).toModel(CategoryModel.class);
		updateCategory.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		updateCategory = categoryService.update(updateCategory);
		mapper.writeValue(response.getOutputStream(), updateCategory);
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		CategoryModel categoryModel =  HttpUtil.of(request.getReader()).toModel(CategoryModel.class);
		categoryService.delete(categoryModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
}
