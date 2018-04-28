package com.zc.dao;

import java.util.List;

import com.zc.entity.Department;

/**
 * @date 2018-4-10
 * @author zhangC
 * 查询全部的院系
 * id ==> name
 * name ==> id
 * 
 */
public interface IDepartmentDao {
	
	List<Department> allDepartment();
	String getNameById(int id);
	int getIdByName(String name);
}
