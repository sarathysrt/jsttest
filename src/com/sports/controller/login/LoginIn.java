package com.sports.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sports.model.entities.Unit;
import com.sports.model.queries.UnitDao;

public class LoginIn extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		String unittype = (String) request.getParameter("unittype");
		
		/*HttpSession session = request.getSession();
		session.setAttribute("_currentUnit_", null);
		if ("org".equals(username)){
			
			request.getRequestDispatcher("/organizations/OrgMain.jsp")
			.forward(request, response);
		}else
			if ("ref".equals(username))
			{
				request.getRequestDispatcher("/referee/ReferMain.jsp")
				.forward(request, response);
			}
			else
				if ("oth".equals(username))
				{
					request.getRequestDispatcher("/matchs/MatMain.jsp")
					.forward(request, response);
				}
				*/
		UnitDao udao = new UnitDao();
		Unit unit = udao.queryPsdByUsername(username, unittype);
		if (unit == null) {
			request.getSession().setAttribute("errorMsg", "Enter valid data");
			request.getRequestDispatcher("/Login.jsp")
			.forward(request, response);
		} else {
			if (password.equals(unit.getPassWord())) {
				// TODO login succeed
				HttpSession session = request.getSession();
				session.setAttribute("_currentUnit_", unit);
				if ("3".equals(unit.getUnitType())
						|| "4".equals(unit.getUnitType())) {
					request.getRequestDispatcher("/matchs/MatMain.jsp")
							.forward(request, response);
				} else if ("2".equals(unit.getUnitType())) {
					request.getRequestDispatcher("/referee/ReferMain.jsp")
							.forward(request, response);
				} else {
					request.getRequestDispatcher("/organizations/OrgMain.jsp")
							.forward(request, response);
				}
			} else {
				// TODO login losing
				request.getSession().setAttribute("errorMsg", "error¯");
				request.getRequestDispatcher("/Login.jsp")
				.forward(request, response);
			}
			
		}
	}

}
