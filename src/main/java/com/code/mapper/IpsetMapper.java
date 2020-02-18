package com.code.mapper;

import java.util.List;

import com.code.entity.Ipset;

public interface IpsetMapper {
	List<Ipset> select();
	Ipset selectip(String ip);
	int insert(Ipset ipset);
	int updateByPrimaryKeySelective(Ipset ipset);
}
