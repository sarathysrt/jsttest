package com.sports.model.queries;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sports.db.utils.DBHelper;
import com.sports.model.entities.Match;

public class MatchDao {
	public int getMaxMatchNo() {
		String sql = "select max(MATCH_NO) max from sports_match";
		return (Integer) DBHelper.executeQuery(sql, new Object[] {}).get(0)
				.get("max");
	}
	
	public void updateScore(int matchId, String score, int rank){
		String sql = "update sports_match set MATCH_SCORE = ? , MATCH_RANK = ? where match_id = ?";
		DBHelper.execute(sql, new Object[] {score, rank, matchId});
	}
	
	public boolean getRank(int processId, int rank, int matchId){
		String sql = "select * from sports_match where MATCH_RANK = ? and process_id = ? and match_id != ?";
		List<Map> res =  DBHelper.executeQuery(sql, new Object[] {rank, processId, matchId});
		return res.size() > 0 ? true : false;
	}
	
	public int getCount() {
		String sql = "select count(MATCH_NO) count from sports_match";
		return Integer.parseInt((DBHelper.executeQuery(sql, new Object[] {})
				.get(0).get("count") + ""));
	}

	public int getMatchCount(int processId) {
		String sql = "select count(*) count from sports_match where process_id = ?";
		return (Integer) DBHelper.executeQuery(sql, new Object[] { processId })
				.get(0).get("count");
	}

	public List<Match> queryMatchsByItemId(int itemId) {
		ProcessDao dao = new ProcessDao();
		int processId = dao.querymaxOrder(itemId);
		return  queryMatchsByProcessId(processId);
	}
	
	public List<Match> queryMatchsByProcessId(int processId) {
		String sql = "select * from sports_match where process_ID = ?" ;
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { processId });
		List<Match> matchList = new ArrayList<Match>();
		for (Map map : list) {
			Match m = new Match(map);
			matchList.add(m);
		}
		return matchList;
	}
	
	public List<Match> queryMatchsHasRank(int processId) {
		String sql = "select * from sports_match where process_ID = ? and match_rank > 0 order by match_rank asc" ;
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { processId });
		List<Match> matchList = new ArrayList<Match>();
		for (Map map : list) {
			Match m = new Match(map);
			matchList.add(m);
		}
		return matchList;
	}
	
	public List<Map> queryMatchsByUnitId(int unitId) {
		String sql = "select * from sports_match where person_ID in ( select person_id from sports_person where unit_id = ?)  ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { unitId });
		return list;
	}
	
	public boolean save(int id, Match match) {
		String sql = "insert into sports_match values (?,?,?,?,?,?,?,?)";
		return DBHelper.execute(
				sql,
				new Object[] { id, match.getPersonId(), match.getProcessId(),
						match.getMatchNo(), match.getMatchGroupNo(),
						match.getMatchScore(), match.getMatchRank(),
						match.getAwardId() });
	}
	public void delMatchByMatchId(int matchId){
		String sql = "delete from sports_match where match_id = ?  ";
		DBHelper.execute(sql, new Object[]{matchId});
	}
	public void delMatchByPersonId(int personId){
		String sql = "delete from sports_match where person_id = ?  ";
		DBHelper.execute(sql, new Object[]{personId});
	}
	public Match getMatchByMatchId(int matchId){
		String sql = "select * from sports_match where match_id = ?  ";
		List<Map> res = DBHelper.executeQuery(sql, new Object[]{matchId});
		return new Match(res.get(0));
	} 
}
