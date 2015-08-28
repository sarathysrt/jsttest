package com.sports.model.entities;

import java.util.Map;

public class Match {
	// `MATCH_ID` int NOT NULL ,
	// `PERSON_ID` int NOT NULL ,
	// `PROCESS_ID` int NOT NULL ,
	// `MATCH_NO` int NOT NULL ,
	// `MATCH_GROUP_NO` int NOT NULL ,
	// `MATCH_SCORE` varchar(50) NOT NULL ,
	// `MATCH_RANK` int NOT NULL ,
	// `AEARD_ID` int NOT NULL ,
	private int matchId;
	private int personId;
	private int processId;
	private int matchNo;
	private int matchGroupNo;
	private String matchScore;
	private int matchRank;
	private int awardId;
	public Match(Map map) {
		super();
		this.matchId = (Integer)map.get("MATCH_ID");
		this.personId = (Integer)map.get("PERSON_ID");
		this.processId = (Integer)map.get("PROCESS_ID");
		this.matchNo = (Integer)map.get("MATCH_NO");
		this.matchGroupNo = (Integer)map.get("MATCH_GROUP_NO");
		this.matchScore = (String)map.get("MATCH_SCORE");
		this.matchRank = (Integer)map.get("MATCH_RANK");
		this.awardId = (Integer)map.get("AWARD_ID");
	}
	public Match(int personId, int processId, int matchNo, int matchGroupNo,
			String matchScore, int matchRank, int awardId) {
		super();
		this.personId = personId;
		this.processId = processId;
		this.matchNo = matchNo;
		this.matchGroupNo = matchGroupNo;
		this.matchScore = matchScore;
		this.matchRank = matchRank;
		this.awardId = awardId;
	}

	public int getMatchId() {
		return matchId;
	}

	public void setMatchId(int matchId) {
		this.matchId = matchId;
	}

	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public int getProcessId() {
		return processId;
	}

	public void setProcessId(int processId) {
		this.processId = processId;
	}

	public int getMatchNo() {
		return matchNo;
	}

	public void setMatchNo(int matchNo) {
		this.matchNo = matchNo;
	}

	public int getMatchGroupNo() {
		return matchGroupNo;
	}

	public void setMatchGroupNo(int matchGroupNo) {
		this.matchGroupNo = matchGroupNo;
	}

	public String getMatchScore() {
		return matchScore;
	}

	public void setMatchScore(String matchScore) {
		this.matchScore = matchScore;
	}

	public int getMatchRank() {
		return matchRank;
	}

	public void setMatchRank(int matchRank) {
		this.matchRank = matchRank;
	}

	public int getAwardId() {
		return awardId;
	}

	public void setAwardId(int awardId) {
		this.awardId = awardId;
	}

}
