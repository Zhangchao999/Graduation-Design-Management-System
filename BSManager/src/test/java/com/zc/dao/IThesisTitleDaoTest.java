package com.zc.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.zc.BaseTest;
import com.zc.entity.Department;
import com.zc.entity.Student;
import com.zc.entity.ThesisTitle;
import com.zc.entity.Topic;
import com.zc.entity.User;
import com.zc.service.impl.StudentServiceImpl;

public class IThesisTitleDaoTest extends BaseTest{

	@Autowired
	private IThesisTitleDao thesisTitleDao;
	
	@Autowired
	private StudentServiceImpl studentService;
	
	@Test
	public void test1() throws Exception{
		ThesisTitle thesis = new ThesisTitle();
		thesis.setId(0);
		thesis.setThesisName("课题2");
		thesis.setTeacherId(4);
		Date time = new Date();
		thesis.setSubmitTime(time);
		thesis.setInputMan("admin");
		thesis.setDescription("这是课题2的描述");
		int num = thesisTitleDao.addThesisTitle(thesis);
		System.out.println("添加了："+num);
	}
	
	@Test
	public void test2() throws Exception{
		List<ThesisTitle> thesisList = thesisTitleDao.showAllThesisTitle(4);
		System.out.println(thesisList);
	}
	@Test
	public void test3() throws Exception{
		ThesisTitle thesis = thesisTitleDao.getThesisById(3);
		System.out.println(thesis);
	}
	@Test
	public void test4() throws Exception{
		ThesisTitle thesis = new ThesisTitle();
		thesis.setId(3);
		thesis.setThesisName("课题22");
		thesis.setTeacherId(4);
		Date time = new Date();
		thesis.setSubmitTime(time);
		thesis.setInputMan("t_one");
		thesis.setDescription("这是课题2的描述....");
		int num = thesisTitleDao.updateThesisTitle(thesis);
		System.out.println(num);
	}
	
	@Test
	public void test5() throws Exception{
		int num = thesisTitleDao.deleteThesisTitle(5);
		System.out.println(num);
	}
	
	@Test
	public void test6() throws Exception{
		List<ThesisTitle> thesisList = thesisTitleDao.showAllThesisTitleAd();
		System.out.println(thesisList);
	}
	
	@Test
	public void test7() throws Exception{
		int num = thesisTitleDao.agreeThesis(2);
		System.out.println(num);
	}
	@Test
	public void test8() throws Exception{
		studentService.availableTopic();
	}
	
	@Test
	public void test9() throws Exception{
		List<ThesisTitle> t = studentService.availableTopic();
		System.out.println(t);
	}
	
}
