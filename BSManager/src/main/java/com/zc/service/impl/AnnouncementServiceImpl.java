package com.zc.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zc.dao.IAnnouncementDao;
import com.zc.entity.Announcement;
import com.zc.service.IAnnouncementService;

@Service
public class AnnouncementServiceImpl implements IAnnouncementService {
	@Autowired
	private IAnnouncementDao announcementDao;

	public int addAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub
		int num = announcementDao.addAnnouncement(announcement);
		
		return num;
	}

	public int deleteAnnouncement(int id) {
		// TODO Auto-generated method stub
		int num = announcementDao.deleteAnnouncement(id);
		
		return num;
	}

	public List<Announcement> showAllAnnonucement() {
		// TODO Auto-generated method stub
		List<Announcement> list = announcementDao.showAllAnnouncement();
		
		return list;
	}
	
	
}
