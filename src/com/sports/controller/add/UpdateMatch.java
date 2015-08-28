package com.sports.controller.add;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.entities.Match;
import com.sports.model.queries.MatchDao;

public class UpdateMatch extends HttpServlet { 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		doPost(request, response);
	} 
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		request.setCharacterEncoding("UTF-8"); 
		String score = request.getParameter("score");
		int rank = Integer.parseInt(request.getParameter("rank"));
		int matchId = Integer.parseInt(request.getParameter("matchid"));
		MatchDao mdao = new MatchDao();
		Match match = mdao.getMatchByMatchId(matchId);
		boolean isC = mdao.getRank(match.getProcessId(), rank, matchId);
		if(!isC){
			//TODO succeed
			mdao.updateScore(matchId, score, rank); 
			request.getRequestDispatcher("/referee/score.jsp?processId = " + String.valueOf(match.getProcessId())).forward(request,
					response);
		}else{
			//TODO losing
			request.getSession().setAttribute("errorMsg", "名次不能重复");
			request.getRequestDispatcher("/referee/addscore.jsp").forward(request,
					response);
		}
	}

}
