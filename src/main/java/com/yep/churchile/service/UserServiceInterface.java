package com.yep.churchile.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yep.churchile.model.User;
import com.yep.churchile.utils.ResultData;

@Service
public interface UserServiceInterface {
   public ResultData<User> getUserById(Integer userId) throws Exception;
   public ResultData<User> getUserByPhoneAndPassword(String phone, String password) throws Exception;
   public ResultData<List<User>> getAllUser() throws Exception;
   public ResultData<Integer> updateUser(User user) throws Exception; 
   public ResultData<Integer> deleteUserById(Integer id) throws Exception; 
   public ResultData<Integer> addUser(User user) throws Exception; 

}
