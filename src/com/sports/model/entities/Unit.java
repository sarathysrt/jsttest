package com.sports.model.entities;

import java.util.Map;

public class Unit {
	private int unitId;
	private String unitName;
	private String unitType;
	private String userName;
	private String passWord;

	public Unit(int unitId, String unitName, String unitType) {
		super();
		this.unitId = unitId;
		this.unitName = unitName;
		this.unitType = unitType;
	}
	
	public Unit(String unitName, String unitType,String userName,String passWord) {
		super(); 
		this.unitName = unitName;
		this.unitType = unitType;
		this.userName = userName;
		this.passWord = passWord;
	}
	
	public Unit(Map map) {
		super();
		this.unitId = (Integer) map.get("UNIT_ID");
		this.unitName = (String) map.get("UNIT_NAME");
		this.unitType = (String) map.get("UNIT_TYPE");
		this.userName = (String) map.get("USERNAME");
		this.passWord = (String) map.get("PASSWORD");
	}

	public int getUnitId() {
		return unitId;
	}

	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getUnitType() {
		return unitType;
	}

	public void setUnitType(String unitType) {
		this.unitType = unitType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
}
