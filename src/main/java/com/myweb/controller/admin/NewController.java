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
import com.myweb.model.NewModel;
import com.myweb.service.ICategoryService;
import com.myweb.service.INewService;
import com.myweb.utils.FormUtil;
import com.myweb.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-news"})
public class NewController extends HttpServlet{

	private static final long serialVersionUID = -1155439167009696556L;
	
	@Inject
	private INewService newService;
	@Inject
	private ICategoryService categoryService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NewModel model = FormUtil.toModel(NewModel.class, request);
		String view = "";
		if(model.getType().equals(SystemConstant.LIST)) {
			model.setListResult(newService.findAll());
			request.setAttribute("categories", categoryService.findAll());
			view = "/views/admin/news/list.jsp";
		}else if(model.getType().equals(SystemConstant.EDIT)) {
			if(model.getId() != null) {
				model = newService.findOne(model.getId());
			}
			request.setAttribute("categories", categoryService.findAll());
			view = "/views/admin/news/edit.jsp";
		}
		else if(model.getType().equals(SystemConstant.DETAIL)) {
			if(model.getId() != null) {
				model = newService.findOne(model.getId());
			}
			
			view = "/views/admin/news/detail.jsp";
		}
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
