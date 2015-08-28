package com.sports.controller.add;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.queries.AwardDao;

public class UpdateAward extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost( request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		int awardId = Integer.parseInt(request.getParameter("awardId"));
		String awardName = request.getParameter("awardName");
		String awardSynopsis = request.getParameter("awardSynopsis");
		String awardCost = request.getParameter("awardCost");
		AwardDao adao = new AwardDao();
		adao.updateAward(awardId, awardName, awardSynopsis, awardCost);
		request.getRequestDispatcher("/organizations/award.jsp? ").forward(request,
				response);
	}

}
