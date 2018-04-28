package com.zc.dao;

import org.apache.ibatis.annotations.Param;

import com.zc.entity.StudentTaskBookOpening;

/**
 * @date 2018-4-15
 * @author zhangC
 * 根据学生id 获得信息
 * 插入信息 只添加学生id
 * 通过学生id修改任务书路径
 * 通过学生id修改开题报告路径
 * 重置任务书路径
 * 重置开题报告路径
 * 根据任务书路径查找信息
 * 根据开题报告路径查找信息
 * 根据学生id 修改审核状态(1-->不通过 2--> 通过 )
 *
 */

public interface IStudentTaskBookOpeningDao {
	
	StudentTaskBookOpening showInfoByStudentId(int studentId);
	
	int addInfoByStudentId(int studentId);
	
	int uploadTaskBook(@Param("studentId") int studentId,@Param("studentTaskBook") String studentTaskBook);
	
	int uploadOpening(@Param("studentId") int studentId,@Param("studentOpeningResport") String studentOpeningResport);
	
	int resetTaskBook(int studentId);
	
	int resetOpening(int studentId);
	
	StudentTaskBookOpening getInfoByTaskBookPath(String studentTaskBook);
	
	StudentTaskBookOpening getInfoByOpeningPath(String studentOpeningResport);
	
	int passOpening(int studentId);
	
	int failOpening(int studentId);
}
