package com.yep.churchile.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yep.churchile.model.User;

@Repository
public class UserDao extends BaseDao {

	public User getUserById(Integer id) {
		return this.getSqlSession().selectOne("com.yep.churchile.dao.UserDao.getUserById", id);
	}

	public User getUserByPhoneAndPassword(String phone, String password){
	    Map<String, Object> params = new HashMap<String, Object>();
	    params.put("phone", phone);
	    params.put("password", password);
    	return this.getSqlSession().selectOne("com.yep.churchile.dao.UserDao.getUserByPhoneAndPassword",params);
    }
	
	/**
	 * 添加用户
	 * 
	 * @param bookId
	 * @param studentId
	 * @return 插入的行数
	 */
	public int addUser(String name, String idCard, String phone, String password, int type, int state){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", name);
		params.put("idCard", idCard);
		params.put("phone", phone);
		params.put("password", password);
		params.put("type", type);
		params.put("state", state);
		
		return this.getSqlSession().insert("com.yep.churchile.dao.UserDao.addUser", params);
	}
}