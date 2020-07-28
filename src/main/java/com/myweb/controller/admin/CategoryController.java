package com.myweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.constant.SystemConstant;
import com.myweb.model.CategoryModel;
import com.myweb.service.ICategoryService;
import com.myweb.utils.FormUtil;
import com.myweb.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-category"})
public class CategoryController extends HttpServlet{
	
	private static final long serialVersionUID = 3376994957569823902L;
	
	@Inject
	private ICategoryService categoryService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryModel model = FormUtil.toModel(CategoryModel.class, request);
		model.setListResult(categoryService.findAll());
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/category/list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
