package com.sports.controller.add;

import java.io.IOException;
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

public class AddItem extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String itemName = request.getParameter("itemname");
		String itemSynopsis = request.getParameter("itemsynopsis");
		String unitTypeLimit = request.getParameter("unitlimit");
		String sexLimit = request.getParameter("sexlimit");
		int ageLimitMax =  Integer.parseInt(request.getParameter("agelimitmax"));
		int ageLimitMin =  Integer.parseInt(request.getParameter("agelimitmin"));
		int unitNumLimit =  Integer.parseInt(request.getParameter("unitnumlimit"));
		int totalNumLimit =  Integer.parseInt(request.getParameter("totalnumlimit"));
		DateFormat df = new SimpleDateFormat("yyyyMMdd");
		Date stopTime = null,processTime = null;
		try {
			stopTime = df.parse(request.getParameter("stoptime"));
			processTime = df.parse(request.getParameter("processTime"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String processName = request.getParameter("processName");
		String processPlace = request.getParameter("processPlace");
		int numEachGroup = Integer.parseInt(request.getParameter("numEachGroup"));
		Item item = new Item(itemName,itemSynopsis,
				unitTypeLimit, sexLimit, ageLimitMax,
				ageLimitMin, unitNumLimit, totalNumLimit,
				stopTime, 0);
		ItemDao idao = new ItemDao();
		boolean su = idao.save(item);
		int itemId = idao.queryId(item);
		item.setItemId(itemId);
		Process pro = new Process(processName, itemId, 1,
				processTime, processPlace, numEachGroup,
				numEachGroup);
		ProcessDao pDao = new ProcessDao();
		pDao.save(pro);
		int pId = pDao.queryId(pro);
		item.setFirstProcess(pId);
		idao.updateFirstProcess(item);
		if(su){
			request.getRequestDispatcher("/organizations/addsucceed.jsp").forward(request,
					response);
		}else{
			
		}
	}

}
