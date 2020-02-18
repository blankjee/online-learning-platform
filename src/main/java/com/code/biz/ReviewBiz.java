package com.code.biz;

import java.util.List;

import com.code.entity.Review;

public interface ReviewBiz {
	 List<Review> select(int courseid);
	 int delete(Review review);
	 int insert(Review review);
	 String avglable(int courseid);
	 List<Review> selectbyuserid(String username);
	 int updateByPrimaryKeySelective(List<Review> reviews);
}
