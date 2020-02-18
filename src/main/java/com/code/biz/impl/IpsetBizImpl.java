package com.code.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.biz.IpsetBiz;
import com.code.entity.Ipset;
import com.code.mapper.IpsetMapper;
@Service(value="IpsetBiz")
public class IpsetBizImpl implements IpsetBiz{
	@Autowired
	IpsetMapper ipsetMapper;

	@Override
	public List<Ipset> select() {
		// TODO Auto-generated method stub
		return ipsetMapper.select();
	}

	@Override
	public Ipset selectip(String ip) {
		// TODO Auto-generated method stub
		return ipsetMapper.selectip(ip);
	}

	@Override
	public int insert(Ipset ipset) {
		// TODO Auto-generated method stub
		return ipsetMapper.insert(ipset);
	}

	@Override
	public int updateByPrimaryKeySelective(Ipset ipset) {
		// TODO Auto-generated method stub
		return ipsetMapper.updateByPrimaryKeySelective(ipset);
	}

}
