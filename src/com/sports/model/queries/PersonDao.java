package com.sports.model.queries;

import java.util.List;
import java.util.Map;

import com.sports.db.utils.DBHelper;
import com.sports.model.entities.Item;
import com.sports.model.entities.Person;

public class PersonDao {
	public boolean save(Person person) {
		String sql = "insert into sports_person values (?,?,?,?,?,?)";
		return DBHelper.execute(sql, new Object[] { null,person.getPersonName(),
				person.getSex(), person.getAge(), person.getUnitId(),
				person.getTelephone() });
	} 
	public List<Map> queryPersonByItem(Item item, int unitId){
		String sql = "select * from sports_person where SEX = ? and AGE <= ? and AGE >= ? and UNIT_ID = ?";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{item.getSexLimit(),item.getAgeLimitMax(),item.getAgeLimitMin(),unitId});
		return list;
	}
	public Person queryPersonById(String personId){
		String sql = "select * from sports_person where person_id = ? ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{personId});
		return new Person(list.get(0));
	}
	
	public List<Map> queryPersonByUnitId(int unitId){
		String sql = "select * from sports_person where unit_id = ?  ";
		List<Map> list = DBHelper.executeQuery(sql, new Object[]{unitId});
		return list;
	}
	
	public void delPersonByPersonId(int personId){
		String sql = "delete from sports_person where person_id = ?  ";
		DBHelper.execute(sql, new Object[]{personId});
	}
}
