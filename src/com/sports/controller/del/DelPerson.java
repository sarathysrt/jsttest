package com.sports.controller.del;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.queries.MatchDao;
import com.sports.model.queries.PersonDao;

public class DelPerson extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int personId = Integer.parseInt((String)request.getParameter("personId"));  
		PersonDao pdao = new PersonDao();
		pdao.delPersonByPersonId(personId);
		MatchDao mdao = new MatchDao();
		mdao.delMatchByPersonId(personId);
		request.getRequestDispatcher("/matchs/DelPerson.jsp").forward(request,
				response);
	}

}
