package com.sports.controller.add;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.entities.Match;
import com.sports.model.queries.ItemDao;
import com.sports.model.queries.MatchDao;
import com.sports.model.queries.ProcessDao;

public class AddMatch extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int personId =  Integer.parseInt(request.getParameter("personId"));
		int itemId =  Integer.parseInt(request.getParameter("itemId")); 
		ProcessDao pDao = new ProcessDao();
		int max = pDao.querymaxOrder(itemId);
		MatchDao mdao = new MatchDao();
//		int matchNo = mdao.getMaxMatchNo()+1;
		Match match = new Match(personId, max,0,0,"",-1,1);
		mdao.save(mdao.getCount()+1,match);
		request.getRequestDispatcher("/matchs/addsucceed.jsp").forward(request,
				response);
	}

}
