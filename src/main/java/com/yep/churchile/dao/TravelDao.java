package com.yep.churchile.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yep.churchile.model.Bus;
import com.yep.churchile.model.Travel;

@Repository
public class TravelDao extends BaseDao{
	public Travel getTravelById(Integer id) {
		return this.getSqlSession().selectOne("com.yep.churchile.dao.TravelDao.getTravelById", id);
	}
	
	public List<Travel> getAllTravel(){
		List<Travel> travelList = new ArrayList<Travel>();
		travelList = this.getSqlSession().selectList("com.yep.churchile.dao.TravelDao.getAllTravel");
		return travelList;
	}
	public List<Travel> selectTravelByCity(String start, String terminal){
		Map<String, Object> params = new HashMap<String, Object>();
	    params.put("start", start);
	    params.put("terminal", terminal);
	    List<Travel> travelList = new ArrayList<Travel>();
		travelList = this.getSqlSession().selectList("com.yep.churchile.dao.TravelDao.selectTicketByCity", params);
		return travelList;
	}
	
	public Integer updateTravel(Travel travel) {
		return this.getSqlSession().update("com.yep.churchile.dao.TravelDao.getTravelById", travel);
	}
	
}
