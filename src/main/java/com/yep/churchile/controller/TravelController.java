package com.yep.churchile.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yep.churchile.model.Bus;
import com.yep.churchile.model.Travel;
import com.yep.churchile.service.BusServiceInterface;
import com.yep.churchile.service.TravelServiceInterface;
import com.yep.churchile.utils.ResultData;

@Controller 
@RequestMapping(method = {RequestMethod.POST, RequestMethod.GET}, value = "/travel", produces = "application/json;charset=UTF-8")
public class TravelController extends BaseController{
	private static final Logger LOGGER = LoggerFactory.getLogger(BusController.class);

	@Autowired
	TravelServiceInterface travelService;
	
	@ResponseBody
	@RequestMapping("/gettravel")
	public ResultData<Travel> getBusById(Integer id){
		try{
			ResultData<Travel> travel = travelService.getTravelById(id);
			if(!travel.isSuccessful()){
				
			} 
			LOGGER.info("Travel", travel);
			return travel;
		}catch(Exception e){
			LOGGER.error("Get Travel Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	}
	
	@ResponseBody
	@RequestMapping("/getalltravel")
	public ResultData<List<Travel>> getAllTravel(){
		try{
			ResultData<List<Travel>> travelList = travelService.getAllTravel();
			if(!travelList.isSuccessful()){
				
			} 
			LOGGER.info("Travel List", travelList);
			getSession().setAttribute("travelList", travelList);
			return travelList;
		}catch(Exception e){
			LOGGER.error("Get All Travel Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	} 

	
	@ResponseBody
	@RequestMapping("/selecttravelbycity")
	public ResultData<List<Travel>> selectTravelByCity(String start, String terminal){
		try{
			ResultData<List<Travel>> travelList = travelService.selectTravelByCity(start, terminal);
			if(!travelList.isSuccessful()){
				
			} 
			LOGGER.info("Travel List selected by city", travelList);
			getSession().setAttribute("travelList", travelList);
			return travelList;
		}catch(Exception e){
			LOGGER.error("Get All Travel By City Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	} 
	@ResponseBody
	@RequestMapping("/updatetravel")
	public ResultData<Integer> updateTravel(Travel travel){
		try{
			LOGGER.info("Update Travel", travel);
			return travelService.updateTravel(travel);
		}catch(Exception e){
			LOGGER.error("Update Travel Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	} 

}
