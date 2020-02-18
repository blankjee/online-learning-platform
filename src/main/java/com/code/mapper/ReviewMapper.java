package com.code.mapper;

import java.util.List;

import com.code.entity.Review;

public interface ReviewMapper {
 List<Review> select(int courseid);
 int delete(Review review);
 int insert(Review review);
 List<Review> selectbyuserid(String username);
 int updateByPrimaryKeySelective(Review review);
}
