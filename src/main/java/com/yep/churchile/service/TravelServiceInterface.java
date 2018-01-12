package com.yep.churchile.service;

import java.util.List;

import com.yep.churchile.model.Bus;
import com.yep.churchile.model.Travel;
import com.yep.churchile.utils.ResultData;

public interface TravelServiceInterface {
	public ResultData<Travel> getTravelById(Integer id) throws Exception;
	public ResultData<List<Travel>> getAllTravel() throws Exception;
	public ResultData<Integer> updateTravel(Travel travel) throws Exception;
	public ResultData<List<Travel>> selectTravelByCity(String start, String terminal) throws Exception;

}
