package com.zc.dao;

import java.util.List;

import com.zc.entity.TeacherProgress;

/**
 * @date 2018-4-17
 * @author zhangC
 * 添加进度信息
 * 通过进度
 * 未通过进度
 * 根据学生id获得进度信息
 * 根据教师id获得进度信息
 * 
 *
 */

public interface ITeacherProgressDao {
	
	int addTeacherProgress(TeacherProgress teacherProgress);
	
	int passTeacherProgress(int id);
	
	int failTeacherProgress(int id);
	
	List<TeacherProgress> getInfoByStudentId(int studentId);
	
	List<TeacherProgress> getInfoByTeacherId(int teacherId);
	
}
