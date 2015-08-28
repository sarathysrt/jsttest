package com.sports.model.queries;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.sports.db.utils.DBHelper;
import com.sports.model.entities.Item;

public class ItemDao {
	public boolean save(Item item) {
		String sql = "insert into sports_item values (?,?,?,?,?,?,?,?,?,?,?)";
		return DBHelper.execute(
				sql,
				new Object[] { null, item.getItemName(),
						item.getItemSynopsis(), item.getUnitTypeLimit(),
						item.getSexLimit(), item.getAgeLimitMax(),
						item.getAgeLimitMin(), item.getUnitNumLimit(),
						item.getTotalNumLimit(), item.getStopTime(),
						item.getFirstProcess() });
	}

	public int queryId(Item item) {
		String sql = "select * from sports_item where ITEM_NAME = ? and SEX_LIMIT = ? and UNIT_TYPE_LIMIT = ? ";
		List<Map> list = DBHelper.executeQuery(
				sql,
				new Object[] { item.getItemName(), item.getSexLimit(),
						item.getUnitTypeLimit() });
		return (Integer) list.get(0).get("ITEM_ID");
	}
	public Item queryByFirstProcess(int firstProcess) {
		String sql = "select * from sports_item where FIRST_PROCESS = ? ";
		List<Map> list = DBHelper.executeQuery(
				sql,
				new Object[] { firstProcess });
		return new Item(list.get(0));
	}
	public void updateFirstProcess(Item item) {
		String sql = "update sports_item set FIRST_PROCESS = ? where ITEM_ID = ?";
		DBHelper.execute(sql,
				new Object[] { item.getFirstProcess(), item.getItemId() });
	}

	public List<Item> queryItems(String sex, int age, int unitType) {
		List<Item> items = new ArrayList<Item>();
		String sql = "select * from sports_item where sex_limit = ? and"
				+ " age_limit_max >= ? and  age_limit_min <= ? and unit_type_limit = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { sex, age,
				age, unitType });
		for (Map map : list) {
			items.add(new Item(map));
		}
		return items;
	}
	
	public List<Item> queryItemsByUnit(String unitType) {
		List<Item> items = new ArrayList<Item>();
		String sql = "select * from sports_item where unit_type_limit = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] {  unitType });
		for (Map map : list) {
			items.add(new Item(map));
		}
		return items;
	}

	public Item queryItemById(String itemId) {
		List<Item> items = new ArrayList<Item>();
		String sql = "select * from sports_item where ITEM_ID = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] { itemId });
		return new Item(list.get(0));
	}

	public List<Item> queryAllItems() {
		List<Item> items = new ArrayList<Item>();
		String sql = "select * from sports_item";
		List<Map> list = DBHelper.executeQuery(sql, new Object[] {});
		for (Map map : list) {
			items.add(new Item(map));
		}
		return items;
	}
}
