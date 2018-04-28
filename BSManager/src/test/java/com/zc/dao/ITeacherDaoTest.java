package com.zc.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.zc.BaseTest;
import com.zc.entity.Student;
import com.zc.entity.Teacher;
import com.zc.entity.TeacherProgress;
import com.zc.entity.TeacherTaskBookOpening;
import com.zc.service.ITeacherService;
import com.zc.service.impl.TeacherServiceImpl;

public class ITeacherDaoTest extends BaseTest{

	@Autowired
	private ITeacherDao teacherDao;
	
	@Autowired
	private ITeacherTaskBookOpeningDao teacherTaskBookOpeningDao;
	
	@Autowired
	private ITeacherService teacherService;
	
	@Autowired
	private ITeacherProgressDao teacherProgressDao;
	@Test
	public void testAddTeacher() {
		Date time = new Date();
		Teacher t = new Teacher();
		t.setTeacherNo("t_01");
		t.setTeacherName("teacher1");
		t.setDepartmentId(1);
		t.setSex("Ů");
		t.setInputMan("admin");
		t.setLastModifyTime(time);
		t.setPhone("4545135453");
		int num = teacherDao.addTeacher(t);
		System.out.println(num);
	}
	
	@Test
	public void testSelect() {
		Teacher t = teacherDao.selectTeacher(3);
		System.out.println(t);
	}
	
	@Test
	public void showAllTeacher() {
		List<Teacher> t = teacherDao.showAllTeacher();
		System.out.println(t);
	}
	
	@Test
	public void test1() {
		Teacher t = teacherDao.selectTeacher(4);
		System.out.println(t);
	}
	
	@Test
	public void test2() {
		Date time = new Date();
		Teacher t = new Teacher();
		t.setTeacherNo("t_01");
		t.setTeacherName("teacher1");
		t.setDepartmentId(46);
		t.setSex("女");
		t.setInputMan("admin");
		t.setLastModifyTime(time);
		t.setPhone("123321");
		t.setId(4);
		int num = teacherDao.updateTeacher(t);
		System.out.println(num);
	
	}
	
	@Test
	public void test3() {
		
		List<Teacher> list1 = teacherDao.showTeacherOne1("t_01");
		System.out.println("list1="+list1);
		
		List<Teacher> list2 = teacherDao.showTeacherOne2("阿飞");
		System.out.println("list2"+list2);
	}
	
	@Test
	public void test4() {
		
		List<Teacher> list = teacherDao.showTeacherOne3("t_04","阿");
		System.out.println("list="+list);
		
	}
	@Test
	public void test5() {
		
		Teacher t = teacherDao.teacherInfoByNo("t_01");
		System.out.println(t);
		
	}
	
	@Test
	public void test6() {
		TeacherTaskBookOpening ttbo = teacherTaskBookOpeningDao.showInfo(4);
		System.out.println(ttbo);
	}
	
	@Test
	public void test7() {
		TeacherTaskBookOpening teacherTaskBookOpening = new TeacherTaskBookOpening();
		teacherTaskBookOpening.setTeacherId(4);
		teacherTaskBookOpening.setThesisTitleId(4);
		teacherTaskBookOpening.setTaskBook("E:\\BSM\\admin\\test\\test_文件.docx");
		teacherTaskBookOpening.setDescription("这是教师id=4的任务书");
		
		
		int num = teacherTaskBookOpeningDao.addTaskBook(teacherTaskBookOpening);
		System.out.println(num);
	}
	
	@Test
	public void test8() {
		TeacherTaskBookOpening teacherTaskBookOpening = new TeacherTaskBookOpening();
		teacherTaskBookOpening.setTeacherId(4);
		teacherTaskBookOpening.setOpeningReport("E:\\BSM\\admin\\test\\test_文件.docx");
		teacherTaskBookOpening.setDescription("这是教师id=4的开题报告");
		
		int num = teacherTaskBookOpeningDao.addOpening(teacherTaskBookOpening);
		System.out.println(num);
	}
	
	@Test
	public void test9() {
		TeacherTaskBookOpening teacherTaskBookOpening = new TeacherTaskBookOpening();
		teacherTaskBookOpening.setTeacherId(4);
		teacherTaskBookOpening.setThesisTitleId(4);
		teacherTaskBookOpening.setTaskBook("E:\\BSM\\admin\\test\\test_文件.docx");
		teacherTaskBookOpening.setDescription("上传任务书");
		
		int num = teacherTaskBookOpeningDao.uploadTaskBook(teacherTaskBookOpening);
		System.out.println(num);
	}
	
	@Test
	public void test10() {
		TeacherTaskBookOpening teacherTaskBookOpening = new TeacherTaskBookOpening();
		teacherTaskBookOpening.setTeacherId(4);
		teacherTaskBookOpening.setOpeningReport("E:\\BSM\\admin\\red.jpg");
		teacherTaskBookOpening.setDescription("上传开题报告");
		teacherTaskBookOpening.setThesisTitleId(4);
		
		int num = teacherTaskBookOpeningDao.uploadOpening(teacherTaskBookOpening);
		System.out.println(num);
	}
	
	@Test
	public void test11() {
		
		List<TeacherTaskBookOpening> list = teacherTaskBookOpeningDao.showTeacherTaskBookOpeningById(4);
		System.out.println(list);
	}
	
	@Test
	public void test12() {
		int num = teacherTaskBookOpeningDao.resetTaskBook(3);
		System.out.println(num);
	}
	
	@Test
	public void test13() {
		int num = teacherTaskBookOpeningDao.resetOpening(3);
		System.out.println(num);
	}
	
	@Test
	public void test14() {
		TeacherTaskBookOpening tt = teacherTaskBookOpeningDao.showInfoByThesisId(3);
		if((tt.getOpeningReport()==null || "".equals(tt.getOpeningReport())) &&(tt.getTaskBook()==null || "".equals(tt.getTaskBook())) ) {
			System.out.println("可以删除");
		}else {
			System.out.println("不可删除");
		}
	}
	
	@Test
	public void test15() {
		int num = teacherTaskBookOpeningDao.deleteInfo(3);
		System.out.println(num);
	}
	@Test
	public void test16() {
		TeacherTaskBookOpening tt = teacherTaskBookOpeningDao.getTheisIdByTask("E:\\BSM\\4\\3\\课题2的任务书.docx");
		System.out.println(tt);
	}
	
	@Test
	public void test17() {
		TeacherTaskBookOpening tt = teacherTaskBookOpeningDao.getTheisIdByOpening("E:\\\\BSM\\\\4\\\\3\\\\课题2的任务书.docx");
		System.out.println(tt);
	}
	
	@Test
	public void test18() {
		List<Student> students = teacherService.getAllStudentInfo(4);
		System.out.println(students);
	}
	
	@Test
	public void test19() {
		TeacherProgress t = new TeacherProgress();
		t.setContext("这是阶段任务");
		t.setInputMan("t_one");
		t.setStudentId(9);
		t.setTeacherId(4);
		Date time = new Date();
		t.setInputTime(time);
		
		int num = teacherProgressDao.addTeacherProgress(t);
		System.out.println(num);
	}
	
	@Test
	public void test20() {
		int num = teacherProgressDao.failTeacherProgress(2);
		//int num = teacherProgressDao.passTeacherProgress(2);
		System.out.println(num);
	}
	
}
	
