package com.sports.model.entities;

import java.util.Map;

public class Award {
	private int awardId;
	private String awardName;
	private String awardSynopsis;
	private String awardCost;
	public Award( Map map) {
		super(); 
		this.awardId = (Integer)map.get("AWARD_ID");
		this.awardName = (String)map.get("AWARD_NAME");
		this.awardSynopsis = (String)map.get("AWARD_SYNOPSIS");
		this.awardCost = (String)map.get("AWARD_COST");
	}
	public Award( String awardName, String awardSynopsis,
			String awardCost) {
		super(); 
		this.awardName = awardName;
		this.awardSynopsis = awardSynopsis;
		this.awardCost = awardCost;
	}
	public int getAwardId() {
		return awardId;
	}
	public void setAwardId(int awardId) {
		this.awardId = awardId;
	}
	public String getAwardName() {
		return awardName;
	}
	public void setAwardName(String awardName) {
		this.awardName = awardName;
	}
	public String getAwardSynopsis() {
		return awardSynopsis;
	}
	public void setAwardSynopsis(String awardSynopsis) {
		this.awardSynopsis = awardSynopsis;
	}
	public String getAwardCost() {
		return awardCost;
	}
	public void setAwardCost(String awardCost) {
		this.awardCost = awardCost;
	}
	
	
}
