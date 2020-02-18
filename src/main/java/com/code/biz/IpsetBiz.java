package com.code.biz;

import java.util.List;

import com.code.entity.Ipset;

public interface IpsetBiz {
	List<Ipset> select();
	Ipset selectip(String ip);
	int insert(Ipset ipset);
	int updateByPrimaryKeySelective(Ipset ipset);
}
