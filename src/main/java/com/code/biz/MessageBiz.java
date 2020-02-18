package com.code.biz;

import java.util.List;

import com.code.entity.Message;

public interface MessageBiz {
	int delete(Message record);
    Message select(Message record);
    int insert(Message record);
    List<Message> selectmy(String userid);
}
