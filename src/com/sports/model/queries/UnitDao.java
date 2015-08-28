package com.sports.model.queries;

import java.util.List;
import java.util.Map;

import com.sports.db.utils.DBHelper;
import com.sports.model.entities.Item;
import com.sports.model.entities.Unit;

public class UnitDao {
	public boolean save(Unit unit) {
		String sql = "insert into sports_unit values (?,?,?,?,?)";
		return DBHelper.execute(sql, new Object[] { null,unit.getUnitName(),unit.getUnitType(),
				unit.getUserName(),unit.getPassWord()});
	}
	
	public Unit queryUnitByUnitId(int unitId){
		String sql = "select * from sports_unit where unit_id = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{unitId});
		return new Unit(list.get(0));
	}
	
	public Unit queryPsdByUsername(String username,String unittype){
		String sql = "select * from sports_unit where username = ? and UNIT_TYPE = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{username,unittype});
		if(list.size() == 0){
			return null;
		}
		return new Unit(list.get(0));
	}
	public boolean queryByUsername(String username){
		String sql = "select * from sports_unit where username = ?  ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{username});
		if(list.size() == 0){
			return false;
		}
		return true;
	}
}
