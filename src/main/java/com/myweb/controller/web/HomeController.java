package com.myweb.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.model.UserModel;
import com.myweb.service.IUserService;
import com.myweb.utils.FormUtil;
import com.myweb.utils.MessageUtil;
import com.myweb.utils.SessionUtil;

@WebServlet(urlPatterns = {"/home-page","/login"})
public class HomeController extends HttpServlet{

	private static final long serialVersionUID = 6477455426019143952L;
	
	@Inject
	private IUserService userService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		MessageUtil.showMessage(request);
		if(action != null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}else if(action != null && action.equals("register")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/register.jsp");
			rd.forward(request, response);
		}else if(action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath()+"/home-page");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword(), 1);
			if(model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if(model.getRole().getCode().equals("USER")) {
					response.sendRedirect(request.getContextPath()+"/home-page");
				}if(model.getRole().getCode().equals("ADMIN") || model.getRole().getCode().equals("TOTAL_ADMIN")) {
					response.sendRedirect(request.getContextPath()+"/admin-home");
				}
			}else {
				response.sendRedirect(request.getContextPath()+"/login?action=login&message=username_password_invalid&alert=danger");
			}
		}
		
		if (action != null && action.equals("register")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			UserModel checkmodel = userService.findByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword(), 1);
			if(checkmodel == null) {				
				model = userService.save(model);
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if(model != null && model.getRole().getCode().equals("USER")) {
					response.sendRedirect(request.getContextPath()+"/home-page");
				}else {
					response.sendRedirect(request.getContextPath()+"/login?action=register&message=register_error&alert=danger");
				}
			}else {
				response.sendRedirect(request.getContextPath()+"/login?action=register&message=username_already_exists&alert=danger");
			}
		} 
	}
	
}
