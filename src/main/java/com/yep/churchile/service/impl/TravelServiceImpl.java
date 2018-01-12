package com.yep.churchile.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yep.churchile.dao.BusDao;
import com.yep.churchile.dao.TravelDao;
import com.yep.churchile.model.Bus;
import com.yep.churchile.model.Travel;
import com.yep.churchile.model.User;
import com.yep.churchile.service.TravelServiceInterface;
import com.yep.churchile.utils.ConstantMsg;
import com.yep.churchile.utils.ResultData;
@Service
public class TravelServiceImpl implements TravelServiceInterface{

	@Autowired
	private TravelDao travelDao;
	
	public ResultData<Travel> getTravelById(Integer id) {
		// TODO Auto-generated method stub
		return ResultData.ok(travelDao.getTravelById(id));
	}
	
	public ResultData<List<Travel>> getAllTravel(){
		
		return ResultData.ok(travelDao.getAllTravel());
	}
	
	public ResultData<List<Travel>> selectTravelByCity(String start, String terminal){
		List<Travel> travelList = new ArrayList<Travel>();
		travelList = travelDao.selectTravelByCity(start, terminal);
		if(travelList.size() == 0){
			return ResultData.error(ConstantMsg.ERROR_TRAVEL_NOT_FOUND);
		}
		return ResultData.ok(travelDao.selectTravelByCity(start, terminal));
	}
	

	public ResultData<Integer> updateTravel(Travel travel) throws Exception {
		// TODO Auto-generated method stub
		return ResultData.ok(travelDao.updateTravel(travel));
	}
	
}
