package com.sports.controller.add;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sports.model.entities.Unit;
import com.sports.model.queries.UnitDao;

public class AddUnit extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String unitName = request.getParameter("unitname");
		String unitType = request.getParameter("unittype");
		String userName = (String) request.getParameter("username");
		String passWord = (String) request.getParameter("password");
		Unit yi = new Unit(unitName, unitType,userName,passWord);
		UnitDao dao = new UnitDao();
		if(!dao.queryByUsername(userName)){
			dao.save(yi);
			request.getRequestDispatcher("Login.jsp").forward(request,
					response);
		}else {
			request.getSession().setAttribute("errorMsg", "该用户已注册");
			request.getRequestDispatcher("matchs/AddMatchs.jsp")
			.forward(request, response);
		}
		
	}

}
