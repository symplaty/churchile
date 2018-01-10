package com.yep.churchile.service;

import org.springframework.stereotype.Service;

import com.yep.churchile.model.User;
import com.yep.churchile.utils.ResultData;


@Service
public interface UserServiceInterface {
   public ResultData<User> getUserById(Integer userId);
   public ResultData<User> getUserByPhoneAndPassword(String phone, String password);
   public Integer insert(User user);
}
