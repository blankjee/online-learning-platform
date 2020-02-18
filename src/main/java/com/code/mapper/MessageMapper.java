package com.code.mapper;

import java.util.List;

import com.code.entity.Message;

public interface MessageMapper {
	 int delete(Message record);
      Message select(Message record);
	    int insert(Message record);
      List<Message> selectMy(String userid);
}
