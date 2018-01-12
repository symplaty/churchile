package com.yep.churchile.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yep.churchile.dao.BusDao;
import com.yep.churchile.model.Bus;
import com.yep.churchile.model.User;
import com.yep.churchile.service.BusServiceInterface;
import com.yep.churchile.utils.ResultData;
@Service
public class BusServiceImpl implements BusServiceInterface {
	@Autowired
	private BusDao busDao;
	
	public ResultData<Bus> getBusById(Integer busId) {
		// TODO Auto-generated method stub
		return ResultData.ok(busDao.getBusById(busId));
	}
	
	public ResultData<List<Bus>> getAllBus(){
		
		return ResultData.ok(busDao.getAllBus());
	}
	
	public ResultData<Integer> updateBus(Bus bus){
		return ResultData.ok(busDao.updateBus(bus));
	}

	public ResultData<Integer> deleteBusById(Integer id) throws Exception {
		return ResultData.ok(busDao.deleteBusById(id));
	}


	public ResultData<Integer> addBus(Bus bus) throws Exception {
		// TODO Auto-generated method stub
		return ResultData.ok(busDao.addBus(bus));
	}
}
