package com.sports.model.entities;

import java.util.Map;

public class Person {
	private int personId;
	private String personName;
	private String sex;
	private int age;
	private int unitId;
	private String telephone;

	public Person(String personName, String sex, int age,
			int unitId, String telephone) {
		super();
		this.personName = personName;
		this.sex = sex;
		this.age = age;
		this.unitId = unitId;
		this.telephone = telephone;
	}
	
	public Person(Map map){
		super();
		this.personId = (Integer)map.get("PERSON_ID");
		this.personName = (String)map.get("PERSON_NAME");
		this.sex = (String)map.get("SEX");
		this.age = (Integer)map.get("AGE");
		this.unitId = (Integer)map.get("UNIT_ID");
		this.telephone = (String)map.get("TELEPHONE");
	}
	
	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getUnitId() {
		return unitId;
	}

	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
}
