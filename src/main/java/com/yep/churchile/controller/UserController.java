package com.yep.churchile.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.yep.churchile.model.User;
import com.yep.churchile.service.UserServiceInterface;
import com.yep.churchile.service.impl.UserServiceImpl;
import com.yep.churchile.utils.ConstantMsg;
import com.yep.churchile.utils.ResultData;

@Controller 
@RequestMapping(method = {RequestMethod.POST, RequestMethod.GET}, value = "/user", produces = "application/json;charset=UTF-8")
public class UserController extends BaseController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserServiceInterface userService;
	
	@ResponseBody
	@RequestMapping("/getuser")
	public ResultData<User> getUserById(){
		try{
			ResultData<User> user = userService.getUserById(614161258);
			if(!user.isSuccessful()){
				
			} 
			return user;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	} 
	
	@ResponseBody
	@RequestMapping("/login")
	public ResultData<Map<String, Object>> login(@RequestParam("phone") String phone,
												 @RequestParam("password") String password){
		LOGGER.info("received user login request: phone = {}, password = {}", phone, password);
		Map<String, Object> loginResult = new LinkedHashMap<String, Object>();
		
		try{
			if(StringUtils.isEmpty(phone)){
				return ResultData.error(ConstantMsg.ERROR_USER_PHONE_NOT_NULL);
			}
			if(StringUtils.isEmpty(password)){
				return ResultData.error(ConstantMsg.ERROR_USER_PASSWORD_NOT_NULL);
			}
			ResultData<User> resultData = userService.getUserByPhoneAndPassword(phone, password);
			if(!resultData.isSuccessful()){
				LOGGER.error("登录失败，用户名或密码错误: phone={}, password={}", phone, password);
				return ResultData.error(resultData.getErrorMsg());
			}

			getSession().setAttribute("loginUser", resultData.getData());
			getSession().setAttribute("userId", resultData.getData().getId());
			getSession().setAttribute("type", resultData.getData().getType());
			getSession().setAttribute("state", resultData.getData().getState());
			
			loginResult.put("userId", resultData.getData().getId());
			loginResult.put("userName", resultData.getData().getName());
			loginResult.put("userIdCard", resultData.getData().getIdCard());
			loginResult.put("userType", resultData.getData().getType());
			
			LOGGER.info("登录成功");
		}catch(Exception e){
			LOGGER.error("登录异常", e);
			return ResultData.error(ResultData.EXCEPTION);
			
		}
	return ResultData.ok(loginResult);
	} 
	
	@ResponseBody
	@RequestMapping("/register")
	public ResultData<Map<String, Object>> register(@RequestParam("name") String name,
													@RequestParam("idCard") String idCard,
													@RequestParam("phone") String phone,
													@RequestParam("password") String password,
													@RequestParam("type") int type,
													@RequestParam("state") int state){
		Map<String, Object> registerResult = new LinkedHashMap<String, Object>();
		
		
		return ResultData.ok(registerResult);
		
	}
}
