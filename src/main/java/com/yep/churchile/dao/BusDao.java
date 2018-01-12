package com.yep.churchile.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.yep.churchile.model.Bus;

@Repository
public class BusDao extends BaseDao{
	public Bus getBusById(Integer id) {
		return this.getSqlSession().selectOne("com.yep.churchile.dao.BusDao.getBusById", id);
	}
	public List<Bus> getAllBus(){
		List<Bus> busList = new ArrayList<Bus>();
		busList = this.getSqlSession().selectList("com.yep.churchile.dao.BusDao.getAllBus");
		return busList;
	}
	public Integer updateBus(Bus bus){
		return this.getSqlSession().update("com.yep.churchile.dao.BusDao.updateBus", bus);
	}
	public Integer deleteBusById(Integer id){
		return this.getSqlSession().update("com.yep.churchile.dao.BusDao.deleteBusById", id);
	}
	public Integer addBus(Bus bus){
		return this.getSqlSession().insert("com.yep.churchile.dao.BusDao.addBus", bus);
	}
}
