package com.sports.controller.del;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.queries.ProcessDao;

public class DelProcess extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int processId = Integer.parseInt((String)request.getParameter("processId"));  
		ProcessDao pdao = new ProcessDao();
		pdao.delProcessByPersonId(processId);
		request.getRequestDispatcher("organizations/OrgMain.jsp").forward(request,
				response);
	}

}
