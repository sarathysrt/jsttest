package com.sports.controller.del;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.queries.MatchDao;
import com.sports.model.queries.PersonDao;

public class DelMatch extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int matchId = Integer.parseInt((String)request.getParameter("matchId"));  
		MatchDao mdao = new MatchDao();
		mdao.delMatchByMatchId(matchId);
		request.getRequestDispatcher("/matchs/DelMatch.jsp").forward(request,
				response);
	}

}
