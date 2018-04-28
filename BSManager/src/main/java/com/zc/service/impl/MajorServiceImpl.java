package com.zc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zc.dao.IMajorDao;
import com.zc.entity.Major;
import com.zc.service.IMajorService;

@Service
public class MajorServiceImpl implements IMajorService {
	@Autowired
	private IMajorDao majorDao;
	
	public List<Major> allMajor() {
		List<Major> majors = majorDao.getAllMajor();
		return majors;
	}

	public String getNameById(int id) {
		// TODO Auto-generated method stub
		
		String name = majorDao.getNameByID(id);
		return name;
	}

	public int getIdByName(String name) {
		// TODO Auto-generated method stub
		int id = majorDao.getIdByName(name);
		return id;
	}

}
