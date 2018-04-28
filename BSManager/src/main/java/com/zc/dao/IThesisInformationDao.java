package com.zc.dao;

import com.zc.entity.ThesisInformation;

/**
 * @date 2018-4-17
 * @author zhangC
 * 添加学生提交论文信息
 * 通过学生提交论文信息
 * 未通过学生提交论文信息
 * 删除学生提交论文信息
 * 根据学生id查找学生论文信息
 * 根据论文path查找学生论文信息
 *
 */
public interface IThesisInformationDao {
	
	int addThesisInformation(ThesisInformation thesisInformation);
	
	int passThesisInformation(int studentId);
	
	int failThesisInformation(int studentId);
	
	int deleteThesisInformation(int studentId);
	
	ThesisInformation getInfoByStudentId(int studentId);
	
	ThesisInformation getInfoByFilePath(String thesisText);
}
