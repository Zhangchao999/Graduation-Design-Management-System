package com.zc.dao;

import java.util.List;

import com.zc.entity.Topic;

/**
 * @date 2018-4-12
 * @author zhangC
 * 获得所有的已选课题信息
 * 根据学生id获得选题信息
 * 添加选题信息
 * 根据学生id 删除选题信息
 * 
 */

public interface ITopicDao {
	
	List<Topic> showAllTopic();
	
	Topic topicByStudentId(int studentId);
	
	int addTopic(Topic topic);
	
	int deleteTopic(int studentId);
	
	Topic getInfoByThesisId(int thesisId);
	
	
}
