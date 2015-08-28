package com.sports.model.entities;

import java.util.Date;
import java.util.Map;

public class Item {
	// `ITEM_ID` int NOT NULL AUTO_INCREMENT ,
	// `ITEM_NAME` varchar(30) NOT NULL ,
	// `ITEM_SYNOPSIS` varchar(500) NOT NULL ,
	// `UNIT_TYPE_LIMIT` char(2) NULL DEFAULT '0' ,
	// `SAX_LIMIT` char(2) NULL DEFAULT 'M' ,
	// `AGE_LIMIT_MAX` int NULL DEFAULT 120 ,
	// `AGE_LIMIT_MIN` int NULL DEFAULT 1 ,
	// `UNIT_NUM_LIMIT` int NOT NULL ,
	// `TOTAL_NUM_LIMIT` int NOT NULL ,
	// `STOP_TIME` datetime NOT NULL ,
	// `FIRST_PROCESS` int NOT NULL ,
	private int itemId;
	private String itemName;
	private String itemSynopsis;
	private String unitTypeLimit;
	private String sexLimit;
	private int ageLimitMax;
	private int ageLimitMin;
	private int unitNumLimit;
	private int totalNumLimit;
	private Date stopTime;
	private int firstProcess;
	
	public Item(String itemName, String itemSynopsis,
			String unitTypeLimit, String sexLimit, int ageLimitMax,
			int ageLimitMin, int unitNumLimit, int totalNumLimit,
			Date stopTime, int firstProcess) {
		super();
		this.itemName = itemName;
		this.itemSynopsis = itemSynopsis;
		this.unitTypeLimit = unitTypeLimit;
		this.sexLimit = sexLimit;
		this.ageLimitMax = ageLimitMax;
		this.ageLimitMin = ageLimitMin;
		this.unitNumLimit = unitNumLimit;
		this.totalNumLimit = totalNumLimit;
		this.stopTime = stopTime;
		this.firstProcess = firstProcess;
	}
	public Item(Map map) {
		super();
		this.itemId = (Integer)map.get("ITEM_ID");
		this.itemName = (String)map.get("ITEM_NAME");
		this.itemSynopsis = (String)map.get("ITEM_SYNOPSIS");
		this.unitTypeLimit = (String)map.get("UNIT_TYPE_LIMIT");
		this.sexLimit = (String)map.get("SEX_LIMIT");
		this.ageLimitMax = (Integer)map.get("AGE_LIMIT_MAX");
		this.ageLimitMin = (Integer)map.get("AGE_LIMIT_MIN");
		this.unitNumLimit = (Integer)map.get("UNIT_NUM_LIMIT");
		this.totalNumLimit = (Integer)map.get("TOTAL_NUM_LIMIT");
		this.stopTime = (Date)map.get("STOP_TIME");
		this.firstProcess = (Integer)map.get("FIRST_PROCESS");
	}
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemSynopsis() {
		return itemSynopsis;
	}

	public void setItemSynopsis(String itemSynopsis) {
		this.itemSynopsis = itemSynopsis;
	}

	public String getUnitTypeLimit() {
		return unitTypeLimit;
	}

	public void setUnitTypeLimit(String unitTypeLimit) {
		this.unitTypeLimit = unitTypeLimit;
	}

	public String getSexLimit() {
		return sexLimit;
	}

	public void setSexLimit(String sexLimit) {
		this.sexLimit = sexLimit;
	}

	public int getAgeLimitMax() {
		return ageLimitMax;
	}

	public void setAgeLimitMax(int ageLimitMax) {
		this.ageLimitMax = ageLimitMax;
	}

	public int getAgeLimitMin() {
		return ageLimitMin;
	}

	public void setAgeLimitMin(int ageLimitMin) {
		this.ageLimitMin = ageLimitMin;
	}

	public int getUnitNumLimit() {
		return unitNumLimit;
	}

	public void setUnitNumLimit(int unitNumLimit) {
		this.unitNumLimit = unitNumLimit;
	}

	public int getTotalNumLimit() {
		return totalNumLimit;
	}

	public void setTotalNumLimit(int totalNumLimit) {
		this.totalNumLimit = totalNumLimit;
	}

	public Date getStopTime() {
		return stopTime;
	}

	public void setStopTime(Date stopTime) {
		this.stopTime = stopTime;
	}

	public int getFirstProcess() {
		return firstProcess;
	}

	public void setFirstProcess(int firstProcess) {
		this.firstProcess = firstProcess;
	}
}
