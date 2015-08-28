package com.sports.controller.add;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sports.model.entities.Item;
import com.sports.model.entities.Process;
import com.sports.model.queries.ItemDao;
import com.sports.model.queries.ProcessDao;

public class AddProcess extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String processName = request.getParameter("processName");
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		String processPlace = request.getParameter("processPlace");
		int numTotal =  Integer.parseInt(request.getParameter("numTotal"));
		DateFormat df = new SimpleDateFormat("yyyyMMdd");
		Date processTime = null;
		try {
			processTime = df.parse(request.getParameter("processTime"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		ProcessDao pDao = new ProcessDao();
		int max = pDao.querymaxOrder(itemId);
		Process pro = new Process(processName, itemId, max+1,
				processTime, processPlace, 0,
				numTotal);
		boolean su = pDao.save(pro);
		if(su){
			pro.setProcessId(pDao.queryId(pro));
			pDao.updateFirstProcess(pro);
			request.getRequestDispatcher("/organizations/MagItems.jsp?itemId="+itemId).forward(request,
					response);
		}else{
			
		}
	}

}
