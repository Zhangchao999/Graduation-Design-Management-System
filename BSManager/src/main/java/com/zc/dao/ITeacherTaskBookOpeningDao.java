package com.zc.dao;

import java.util.List;

import com.zc.entity.TeacherTaskBookOpening;

/**
 * @date 2018-4-14
 * @author zhangC
 * 根据 thesisTitleId 查询所有信息
 * 添加任务书信息
 * 添加开题报告信息
 * 根据thesisTitleId更新opening的信息
 * 根据thesisTitleId更新taskBook的信息
 * 根据教师id 获得所有信息
 * 根据thesisTitleId 把taskBook 设置为null
 * 根据thesisTitleId 把opening 设置为null
 * 根据thesisTitleId 查询所有信息
 * 根据thesisTitleId 删除所有信息
 * 根据taskBook 查询信息
 * 根据openingReport 查询信息
 * 
 *
 */

public interface ITeacherTaskBookOpeningDao {
	
	TeacherTaskBookOpening showInfo(int thesisTitleId);

	int addTaskBook(TeacherTaskBookOpening teacherTaskBookOpening);
	
	int addOpening(TeacherTaskBookOpening teacherTaskBookOpening);
	
	int uploadTaskBook(TeacherTaskBookOpening teacherTaskBookOpening);
	
	int uploadOpening(TeacherTaskBookOpening teacherTaskBookOpening);
	
	List<TeacherTaskBookOpening> showTeacherTaskBookOpeningById(int teacherId);
	
	int resetTaskBook(int thesisTitleId);
	
	int resetOpening(int thesisTitleId);
	
	TeacherTaskBookOpening showInfoByThesisId(int thesisTitleId);
	
	int deleteInfo(int thesisTitleId);
	
	TeacherTaskBookOpening getTheisIdByTask(String taskBook);
	
	TeacherTaskBookOpening getTheisIdByOpening(String openingReport);
	
}
