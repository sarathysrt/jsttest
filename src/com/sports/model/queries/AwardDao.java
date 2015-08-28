package com.sports.model.queries;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sports.db.utils.DBHelper;
import com.sports.model.entities.Award;
import com.sports.model.entities.Item;

public class AwardDao {
	public boolean save(Award award) {
		String sql = "insert into sports_award values (?,?,?,?)";
		return DBHelper.execute(
				sql,
				new Object[] { null, award.getAwardName(),
						award.getAwardSynopsis(), award.getAwardCost() });
	}
	
	public List<Award> queryAwards() {
		List<Award> awards = new ArrayList<Award>();
		String sql = "select * from sports_award ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] {  });
		for (Map map : list) {
			awards.add(new Award(map));
		}
		return awards;
	}
	
	public Award queryAwardById(int awardId) {
		String sql = "select * from sports_award where award_id = ? ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { awardId  });
		return new Award(list.get(0));
	}
	
	public void updateAward(int awardId, String aName, String aS, String aCost){
		String sql = "update sports_award set AWARD_NAME = ? , AWARD_SYNOPSIS = ?, AWARD_COST = ? where AWARD_ID = ?";
		DBHelper.execute(sql, new Object[] {aName, aS, aCost, awardId});
	}
	
	public static void main(String[] args) {
		AwardDao dao = new AwardDao(); 
	    dao.updateAward(3,"一等奖","现金","300元") ;
	}
}
