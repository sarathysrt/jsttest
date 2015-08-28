package com.sports.controller.add;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.entities.Match;
import com.sports.model.entities.Process;
import com.sports.model.queries.MatchDao;
import com.sports.model.queries.ProcessDao;

public class UpdateMatchAllPid extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pId = Integer.parseInt(request.getParameter("processId"));
		ProcessDao pdao = new ProcessDao();
		Process p = pdao.queryProcessById(pId);
		int pOrder = p.getProcessOrder();
		Process nP = pdao.queryProcessNextOrder(pOrder, p.getItemId());
		MatchDao mdao = new MatchDao();
		List<Match> lm = mdao.queryMatchsHasRank(pId);
		if (nP == null) {
			request.getRequestDispatcher("/referee/SelItem.jsp").forward(
					request, response);
		} else if (mdao.queryMatchsByProcessId(pId).size() > nP.getNumTotal()) {
			if (lm.size() > nP.getNumTotal()) {
				for (int i = 0; i < nP.getNumTotal(); i++) {
					Match m = lm.get(i);
					m.setProcessId(nP.getProcessId());
					mdao.save(mdao.getCount() + 1, m);
				}
				request.getRequestDispatcher("/referee/SelItem.jsp").forward(
						request, response);
			} else {
				request.getSession().setAttribute("errorMsg", "提交失败");
				request.getRequestDispatcher("/referee/score.jsp").forward(
						request, response);
			}
		}else{
			for (int i = 0; i < lm.size(); i++) {
				Match m = lm.get(i);
				m.setProcessId(nP.getProcessId());
				mdao.save(mdao.getCount() + 1, m);
			}
			request.getRequestDispatcher("/referee/SelItem.jsp").forward(
					request, response);
		}
	}
}
