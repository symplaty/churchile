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
import com.yep.churchile.model.User;
import com.yep.churchile.service.BusServiceInterface;
import com.yep.churchile.service.UserServiceInterface;
import com.yep.churchile.utils.ConstantMsg;
import com.yep.churchile.utils.ResultData;

@Controller 
@RequestMapping(method = {RequestMethod.POST, RequestMethod.GET}, value = "/bus", produces = "application/json;charset=UTF-8")

public class BusController extends BaseController{
	private static final Logger LOGGER = LoggerFactory.getLogger(BusController.class);

	@Autowired
	BusServiceInterface busService;
	
	@ResponseBody
	@RequestMapping("/getbus")
	public ResultData<Bus> getBusById(Integer id){
		try{
			ResultData<Bus> bus = busService.getBusById(id);
			if(!bus.isSuccessful()){
				
			} 
			LOGGER.info("Bus", bus);
			return bus;
		}catch(Exception e){
			LOGGER.error("Get Bus Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	}
	
	@ResponseBody
	@RequestMapping("/getallbus")
	public ResultData<List<Bus>> getAllBus(){
		try{
			ResultData<List<Bus>> busList = busService.getAllBus();
			if(!busList.isSuccessful()){
				
			} 
			LOGGER.info("Bus", busList);
			getSession().setAttribute("busList", busList);
			return busList;
		}catch(Exception e){
			LOGGER.error("Get All Bus Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	} 
	
	@ResponseBody
	@RequestMapping("/updatebus")
	public ResultData<Integer> updateBus(Bus bus){
		try {
			LOGGER.info("Update Bus Start", bus.getId());
			return busService.updateBus(bus);
		} catch (Exception e) {
			// TODO: handle exception
			LOGGER.error("Update Bus Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	}
	
	@ResponseBody
	@RequestMapping("/deletebus")
	public ResultData<Integer> deleteBusById(Integer id){
		try {
			LOGGER.info("Delete Bus Start", id);
			return busService.deleteBusById(id);
		} catch (Exception e) {
			// TODO: handle exception
			LOGGER.error("Delete Bus Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	}
	
	@ResponseBody
	@RequestMapping("/addbus")
	public ResultData<Integer> addBus(Bus bus){
		try {
			LOGGER.info("Add Bus Start", bus.getId());
			return busService.addBus(bus);
		} catch (Exception e) {
			// TODO: handle exception
			LOGGER.error("Add Bus Exception:", e);
			return ResultData.error(ResultData.EXCEPTION);
		}
	}
}


