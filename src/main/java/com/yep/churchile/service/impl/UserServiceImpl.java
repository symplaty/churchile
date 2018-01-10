package com.yep.churchile.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yep.churchile.dao.UserDao;
import com.yep.churchile.model.User;
import com.yep.churchile.service.UserServiceInterface;
import com.yep.churchile.utils.ConstantMsg;
import com.yep.churchile.utils.ResultData;

@Service
public class UserServiceImpl implements UserServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

	@Autowired
	private UserDao userDao;

	public ResultData<User> getUserById(Integer userid) {
//		LOGGER.info("sdasdasd,userid={}", userid);
		LOGGER.info("User={}", this.userDao.getUserById(userid));

		return ResultData.ok(this.userDao.getUserById(userid));
	}

	public Integer insert(User user) {
		return null;
	}

	public ResultData<User> getUserByPhoneAndPassword(String phone, String password) {
		// TODO Auto-generated method stub
		LOGGER.info("login info:{}", userDao.getUserByPhoneAndPassword(phone, password));
		User user = userDao.getUserByPhoneAndPassword(phone, password);
		if (user == null) {
			return ResultData.error(ConstantMsg.ERROR_USER_NOT_FOUND);
		}
		return ResultData.ok(user);
	}

}
