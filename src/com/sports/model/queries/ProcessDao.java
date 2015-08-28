package com.sports.model.queries;

import java.util.List;
import java.util.Map;

import com.sports.model.entities.Item;
import com.sports.model.entities.Process;
import com.sports.db.utils.DBHelper;

public class ProcessDao {
	public boolean save(Process pro) {
		String sql = "insert into sports_process values (?,?,?,?,?,?,?,?)";
		return DBHelper.execute(
				sql,
				new Object[] { null, pro.getProcessName(), pro.getItemId(),
						pro.getProcessOrder(), pro.getProcessTime(),
						pro.getProcessPlace(), pro.getNumEachGroup(),
						pro.getNumTotal() });
	}

	public void updateFirstProcess(Process pro) {
		String sql = "update sports_item set FIRST_PROCESS = ? where item_id = ?";
		DBHelper.execute(
				sql,
				new Object[] { pro.getProcessId() , pro.getItemId() });
	}
	
	public int queryId(Process pro) {
		String sql = "select * from sports_process where ITEM_ID=? and  process_order = ?";
		List<Map> list = DBHelper.executeQuery(sql,
				new Object[] { pro.getItemId(), pro.getProcessOrder() });
		return (Integer) list.get(0).get("PROCESS_ID");
	}

	public void delProcessByPersonId(int processId) {
		String sql = "delete from sports_process where process_id = ?  ";
		DBHelper.execute(sql, new Object[] { processId });
	}

	public Process queryProcessById(int processId) {
		String sql = "select * from sports_process where process_id = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { processId });
		if (list.size() == 1) {
			return new Process(list.get(0));
		} else {
			return null;
		}
	}

	public Process queryProcessNextOrder(int pOrder, int itemId) {
		String sql = "select * from sports_process where process_order < ? and item_id = ? order by process_order desc";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { pOrder, itemId});
		if (list.size() > 0) {
			return new Process(list.get(0));
		} else {
			return null;
		}
	}
	
	public List<Map> queryProcessesByItemId(int itemId) {
		String sql = "select * from sports_process where item_Id = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { itemId });
		return list;
	}

	public int querymaxOrder(int itemId) {
		String sql = "select process_id from sports_process where item_Id = ? and PROCESS_ORDER = (select max(PROCESS_ORDER)from sports_process where item_Id = ?)";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { itemId,
				itemId });
		return (Integer) list.get(0).get("PROCESS_ID");
	}
	
}
