package com.zc.service;

import java.util.List;

import com.zc.entity.Announcement;

/**
 * @date 2018-4-17
 * @author zhangC
 * 添加公告信息
 * 根据id删除公告信息
 * 显示所有公告信息
 *
 */

public interface IAnnouncementService {
	int addAnnouncement(Announcement announcement);
	
	int deleteAnnouncement(int id);
	
	List<Announcement> showAllAnnonucement();
}
