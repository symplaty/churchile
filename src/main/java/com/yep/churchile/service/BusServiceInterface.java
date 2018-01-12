package com.yep.churchile.service;


import java.util.ArrayList;
import java.util.List;

import com.yep.churchile.model.Bus;
import com.yep.churchile.utils.ResultData;

public interface BusServiceInterface {
	   public ResultData<Bus> getBusById(Integer busId) throws Exception;
	   public ResultData<List<Bus>> getAllBus() throws Exception;
	   public ResultData<Integer> updateBus(Bus bus) throws Exception;
	   public ResultData<Integer> deleteBusById(Integer id) throws Exception;
	   public ResultData<Integer> addBus(Bus bus) throws Exception;

}
