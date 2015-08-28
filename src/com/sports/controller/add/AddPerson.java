package com.sports.controller.add;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.entities.Person;
import com.sports.model.entities.Unit;
import com.sports.model.queries.PersonDao;

public class AddPerson extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Unit unit = (Unit)request.getSession().getAttribute("_currentUnit_");
		String personName = request.getParameter("personname");
		String sex = request.getParameter("sex");
		int age = Integer.parseInt(request.getParameter("age"));
		String telephone = request.getParameter("tel");  
		Person person = new Person(personName, sex, age, unit.getUnitId(), telephone);
		PersonDao pdao = new PersonDao();
		boolean su = pdao.save(person);
		if(su){
			//TODO succeed
			request.getRequestDispatcher("/matchs/DelPerson.jsp").forward(request,
					response);
		}else{
			//TODO losing
		}
	}
}
