package com.zc.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.zc.BaseTest;
import com.zc.entity.Announcement;
import com.zc.entity.User;

public class IUserDaoTest extends BaseTest{

	@Autowired
	private IUserDao userDao;
	
	@Autowired
	private IDepartmentDao departmentDao;
	
	@Autowired
	private IMajorDao majorDao;
	
	@Autowired
	private IAnnouncementDao announcementDao;
	
	@Test
	public void testQuery() throws Exception{
		int id = 8;
		User user = userDao.queryById(id);
		System.out.println(user);
	}
	
	@Test
	public void testLogin() {
		User user = new User();
		user.setUserNo("14001");
		user.setPassword("123456");
		user.setPermission(1);
		User currentUser = userDao.login(user);
		System.out.println(currentUser.getId());
	}
	
	@Test
	public void testGetPassword() {
		
		String  userNo = "admin";
		User user = userDao.getPassword(userNo);
		System.out.println(user);
	}
	@Test
	public void getDepartmentName() {
		String name = departmentDao.getNameById(45);
		System.out.println(name);
	}
	
	@Test
	public void getId() {
		int id = departmentDao.getIdByName("机电工程学院");
		System.out.println(id);
	}
	@Test
	public void testMajorName() throws Exception{
		String name = majorDao.getNameByID(2);
		System.out.println(name);
	}
	@Test
	public void testMajorId() throws Exception{
		int id = majorDao.getIdByName("机械工程专业");
		System.out.println(id);
	}
	
	@Test
	public void test1() {
		
		Announcement announcement = new Announcement();
		announcement.setContext("测试公告");
		announcement.setInputMan("admin");
		Date time = new Date();
		announcement.setLastModifyTime(time);
		
		int num = announcementDao.addAnnouncement(announcement);
		System.out.println(num);
		
	}
	
	@Test
	public void test2() {
		int num = announcementDao.deleteAnnouncement(1);
		System.out.println(num);
	}
	
	@Test
	public void test3() {
		
		
		List<Announcement> ann = announcementDao.showAllAnnouncement();
		System.out.println(ann);
		
	}
	
	
}
