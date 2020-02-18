package com.code.biz.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.biz.CourseBiz;
import com.code.entity.Course;
import com.code.mapper.CourseMapper;
import com.code.util.UploadFile;
@Service(value="CourseBiz")
public class CourseBizImpl implements CourseBiz{
	@Autowired
	CourseMapper courseMapper;
	@Override
	public List<Course> selectAllCourse() {
		// TODO Auto-generated method stub
		return courseMapper.selectAllCourse();
	}
	@Override
	public Course selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return courseMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(Course record) {
		// TODO Auto-generated method stub
		return courseMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public List<Course> coursesearch(String search) {
		// TODO Auto-generated method stub
		return courseMapper.coursesearch(search);
	}
	@Override
	public List<Course> freeCourse() {
		// TODO Auto-generated method stub
		return courseMapper.freecourse();
	}
	@Override
	public List<Course> vipCourse() {
		// TODO Auto-generated method stub
		return courseMapper.vipcourse();
	}
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return courseMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int savecourse(HttpServletRequest req) {
		// TODO Auto-generated method stub
		int maxid = courseMapper.selectlastcourse().getId();
		Course course = (Course) UploadFile.uploadFile(String.valueOf(maxid), req);
		if(course.getId()==0) {
			course.setId(maxid+1);
			courseMapper.insertSelective(course);
			/*System.out.println(course.getId());*/
		}else {
			courseMapper.updateByPrimaryKeySelective(course);
		}
		return 0;
	}

}
