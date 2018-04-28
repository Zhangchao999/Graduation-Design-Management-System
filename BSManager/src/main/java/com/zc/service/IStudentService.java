package com.zc.service;

import java.util.List;
import java.util.Map;

import com.zc.entity.Announcement;
import com.zc.entity.Student;
import com.zc.entity.StudentTaskBookOpening;
import com.zc.entity.TeacherProgress;
import com.zc.entity.TeacherTaskBookOpening;
import com.zc.entity.ThesisInformation;
import com.zc.entity.ThesisTitle;
import com.zc.entity.Topic;

/**
 * 
 * @author zhangC
 * 添加学生
 * 学生列表
 * 根据id获得学生信息
 * 更新学生信息
 * 删除学生信息
 * 查询学生信息
 * 根据no获得学生信息
 * 
 * 获得选题列表(除了已选的、不可选的课题)
 * 根据学生id获得选题信息(查看该学生是否选择了课题，没有的话返回null)
 * 添加选题信息(提交学生的选题信息)
 * 删除选题信息(学生退选课题)
 * 
 * @date 2018-4-15
 * @author zhangC
 * 根据选题id 获得TeacherTaskBookOpening 信息
 * 根据学生id 获得StudentTaskBookOpening 信息
 * 上传任务书
 * 上传开题报告
 * 根据学生id 获得任务书和开题报告 Map(name,path)
 * 删除开题报告、任务书
 * 根据任务书路径 或 开题报告路径 获得信息
 * 
 * 
 * 
 * @date 2018-4-17
 * @author zhangC
 * 根据课题id获得课题信息
 * 根据学生id获得阶段任务
 * 显示公告信息
 * 上传论文文件信息
 * 根据学生id获得学生提交的论文信息
 * 根据文件目录获得学生提交的论文信息
 * 根据学生id删除学生提交的论文信息
 * 
 * @date 2018-4-18
 * @author zhangC
 * 根据学生id 获得学生提交的论文信息(重复的)
 * 
 *
 */
public interface IStudentService {
	
	int addStudent(Student student);
	
	List<Student> showAllStudent();
	
	Student getStudentNameById(int id);
	
	int updateStudent(Student student);
	
	int deleteStudent(int id);
	
	List<Student> showStudentOne1(String studentNo);
	
	List<Student> showStudentOne2(String studentName);
	
	List<Student> showStudentOne3(String studentNo,String studentName);
	
	Student getStudentByNO(String studentNo);
	
	List<ThesisTitle> availableTopic();
	
	Topic chosenThesisTitle(int studentId); 
	
	int addTopicToDb(Topic topic);
	
	int deleteTopic(int studentId);
	
	TeacherTaskBookOpening getFilePathByThesisId(int thesisId);
	
	StudentTaskBookOpening getSTBOInfoById(int studentId);
	
	int uploadTaskBook(int studentId,String filePath);
	
	int uploadOpening(int studentId,String filePath);
	
	Map<String, String> getTaskBookOpeningToMap(int studentId);
	
	int resetTaskBook(int studentId);
	
	int resetOpening(int studentId); 
	
	StudentTaskBookOpening getInfoByTaskBookPath(String taskBookPath);
	
	StudentTaskBookOpening getInfoByOpeningPath(String openingPath);
	
	
	ThesisTitle getThesisInfoByid(int thesisId);
	
	List<TeacherProgress> getTeacherProgressByStudentId(int studentId);
	
	List<Announcement> showAllAnnouncement();
	
	int uploadThesisInformation(int studentId,String filePath);
	
	ThesisInformation getInfoByStudentId(int studentId);
	
	ThesisInformation getInfoByFilePath(String filePath);
	
	int deleteThesisInformation(int studentId);
	
	
	ThesisInformation getThesisInforInfoByStudentId(int studentId);
}

