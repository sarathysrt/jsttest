package com.sports.model.entities;

import java.util.Date;
import java.util.Map;

public class Process {
	private int processId;
	private String processName;
	private int itemId;
	private int processOrder;
	private Date processTime;
	private String processPlace;
	private int numEachGroup;
	private int numTotal;

	public Process(String processName, int itemId, int processOrder,
			Date processTime, String processPlace, int numEachGroup,
			int numTotal) {
		super();
		this.processName = processName;
		this.itemId = itemId;
		this.processOrder = processOrder;
		this.processTime = processTime;
		this.processPlace = processPlace;
		this.numEachGroup = numEachGroup;
		this.numTotal = numTotal;
	}
	
	public Process(Map map) {
		super();
		this.processId = (Integer) map.get("process_id".toUpperCase());
		this.processName = (String) map.get("process_name".toUpperCase());
		this.itemId = (Integer) map.get("item_id".toUpperCase());
		this.processOrder = (Integer) map.get("process_order".toUpperCase());
		this.processTime = (Date) map.get("process_time".toUpperCase());
		this.processPlace = (String) map.get("process_place".toUpperCase());
		this.numEachGroup = (Integer) map.get("num_each_group".toUpperCase());
		this.numTotal = (Integer) map.get("num_total".toUpperCase());
	}

	public int getProcessId() {
		return processId;
	}

	public void setProcessId(int processId) {
		this.processId = processId;
	}

	public String getProcessName() {
		return processName;
	}

	public void setProcessName(String processName) {
		this.processName = processName;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getProcessOrder() {
		return processOrder;
	}

	public void setProcessOrder(int processOrder) {
		this.processOrder = processOrder;
	}

	public Date getProcessTime() {
		return processTime;
	}

	public void setProcessTime(Date processTime) {
		this.processTime = processTime;
	}

	public String getProcessPlace() {
		return processPlace;
	}

	public void setProcessPlace(String processPlace) {
		this.processPlace = processPlace;
	}

	public int getNumEachGroup() {
		return numEachGroup;
	}

	public void setNumEachGroup(int numEachGroup) {
		this.numEachGroup = numEachGroup;
	}

	public int getNumTotal() {
		return numTotal;
	}

	public void setNumTotal(int numTotal) {
		this.numTotal = numTotal;
	}
}
