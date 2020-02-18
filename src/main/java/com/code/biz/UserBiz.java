package com.code.biz;

import java.util.List;
import java.util.Map;

import com.code.entity.User;

public interface UserBiz {
	int deleteByPrimaryKey(String id);
	User selectByPrimaryKey(String id);
	List<User> selectAllUser();
	User selectLoginUser(Map map);
	int selectUser(Map map);
	int selectUser(String username);
	int insertSelective(User record);
	int updateByPrimaryKeySelective(User record);
}
