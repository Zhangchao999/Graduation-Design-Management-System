package com.zc.dao;

import java.util.List;

import com.zc.entity.ThesisTitle;

/**
 * @date 2018-4-11
 * @author zhangC
 * 添加课题
 * 根据教师id 查找课题List
 * 根据课题编号查找课题信息
 * 更新课题
 * 删除课题
 * 查找所有的课题(admin查询)
 * 修改status属性 (1==>未审核   2==>审核通过   3==> 审核不通过)
 * 
 * 
 *
 */
public interface IThesisTitleDao {
	int addThesisTitle(ThesisTitle thesisTitle);
	
	List<ThesisTitle> showAllThesisTitle(int id);
	
	ThesisTitle getThesisById(int id);
	
	int updateThesisTitle(ThesisTitle thesisTitle);
	
	int deleteThesisTitle(int id);
	
	List<ThesisTitle> showAllThesisTitleAd();
	
	int agreeThesis(int id);
	
	int disagreeThesis(int id);
	
}
