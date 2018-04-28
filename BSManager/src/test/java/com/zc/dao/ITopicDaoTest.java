package com.zc.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.zc.BaseTest;
import com.zc.entity.Topic;

public class ITopicDaoTest extends BaseTest{

	@Autowired
	private ITopicDao topicDao;
	
	@Test
	public void test1() throws Exception{
		List<Topic> topicList = topicDao.showAllTopic();
		System.out.println(topicList);
	}
	
	@Test
	public void test2() throws Exception{
		Topic t = topicDao.topicByStudentId(9);
		System.out.println(t);
	}
	
	@Test
	public void test3() throws Exception{
		Topic topic= new Topic();
		topic.setThesisId(4);
		topic.setStudentId(15);
		Date time = new Date();
		topic.setSelectTime(time);
		
		int num = topicDao.addTopic(topic);
		System.out.println(num);
	}
	
	@Test
	public void test4(){
		int num = topicDao.deleteTopic(9);
		System.out.println(num);
	}
}
