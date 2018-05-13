package com.zc.service;

import java.util.List;
import java.util.Map;

import com.zc.entity.Announcement;
import com.zc.entity.Doubt;
import com.zc.entity.Student;
import com.zc.entity.StudentScore;
import com.zc.entity.StudentTaskBookOpening;
import com.zc.entity.Teacher;
import com.zc.entity.TeacherProgress;
import com.zc.entity.TeacherTaskBookOpening;
import com.zc.entity.ThesisInformation;
import com.zc.entity.ThesisPaper;
import com.zc.entity.ThesisTitle;
import com.zc.entity.Topic;

/**
 * 
 * @author zhangC
 * 添加教师信息
 * 教师List
 * 删除教师信息
 * 根据id获得教师信息
 * 更新教师信息
 * 查询教师信息
 * 根据no获得教师信息
 * 
 * 上传课题
 * 显示当前教师所上传的课题
 * 根据id获得课题信息
 * 修改课题
 * 删除课题
 * 显示所有的课题
 * 更改课题审核状态(审核通过 、 未通过)
 * 
 * @date 2018-4-14
 * @author zhangC
 * 教师查询自己上传的课题中审核通过的课题列表
 * 教师上传任务书，把文件目录保存到db中
 * 教师上传开题报告，把文件目录保存到db中
 * 获取该教师所上传的文件信息，并保存在map中
 * 获得与文件路径相匹配的课题id 文件目录：E:\BSM\教师id\课题id\文件名 也就是倒数第二个值
 * 根据课程id 获得该属性下的文件信息 包括 任务书和开题报告的文件路径
 * 根据课程id 删除数据信息 把数据库中的信息删掉
 * 根据文件路径获得所有信息
 * 根据课程id 把任务书或者开题报告删掉 也就是把数据库中的指设置为:""
 * 
 * @date 2018-4-15
 * @author zhangC
 * 根据任务书路径 或 开题报告 获得 TeacherTaskBookOpening信息
 * 根据课题id 删除任务书 或者 开题报告
 * 根据教师id 获得该教师管理的学生
 * 根据学生id 获得选题信息
 * 根据选题id 获得课题信息
 * 根据学生id 获得StudentTaskBookOpening信息
 * 根据学生No 审核学生上传的开题报告(1-->不通过  2--> 通过)
 * 
 * @date 2018-4-17
 * @author zhangC
 * 显示所有的公告信息
 * 
 * @date 2018-4-18
 * @author zhangC
 * 根据学生id获得学生提交的论文信息
 * 给予学生提交的论文评价-----通过、不通过
 * 添加学生成绩
 * 修改学生成绩
 * 根据学生id 获得学生成绩
 * 把最终论文上传  供admin查看
 * 显示所有的最终论文
 * 
 * @date 2018-5-10
 * @author zhangC
 * 更新疑惑信息
 * 获得指定学生下的所有疑惑
 * 
 * 
 *
 */
public interface ITeacherService {
	int addTeacher(Teacher teacher);
	
	List<Teacher> showAllTeacher();
	
	int deleteTeacher(int id);
	
	Teacher getTeacherByid(int id);
	
	int updateTeacher(Teacher teacher);
	
	List<Teacher> showTeacherOne1(String teacherNo);
	
	List<Teacher> showTeacherOne2(String teacherName);
	
	List<Teacher> showTeacherOne3(String teacherNo,String teacherName);
	
	Teacher showInfoByNo(String teacherNo);
	
	int uploadThesisTitle(ThesisTitle thesisTitle);
	
	List<ThesisTitle> showAllThesisTitle(int teacherId);
	
	ThesisTitle getThesisById(int id);
	
	int updateThesisTitle(ThesisTitle thesisTitle);
	
	int deleteThesisTitle(int id);
	
	List<ThesisTitle> showAllThesisTitle();
	
	int agreeThesisTitle(int id);
	
	int disagreeThesisTitle(int id);
	
	
	List<ThesisTitle> showAllThesisTitleBeChecked(int teacherId);
	
	int uploadTaskBook(TeacherTaskBookOpening teacherTaskBookOpening);
	
	int uploadOpening(TeacherTaskBookOpening teacherTaskBookOpening);
	
	Map<String, String> uploadTaskBookOpeningResult(int teacherId);
	
	String getThesisTitleByFilePath(String filePath);
	
	TeacherTaskBookOpening getTaskOpeningByThesisId(int thesisTitleId); 
	
	int deleteTaskBookOpening(int thesisTitleId);
	
	
	TeacherTaskBookOpening getThesisIdByTask(String taskBook);
	
	TeacherTaskBookOpening getThesisIdByOpening(String opening);
	
	int resetTask(int thesisTitleId );
	
	int resetOpening(int thesisTitleId);
	
	List<Student> getAllStudentInfo(int teacherId);
	
	Topic getTopicInfoByStudentId(int studentId);
	
	ThesisTitle getThesisInfoByThesisId(int thesisId);
	
	StudentTaskBookOpening getStudentOpeningByStudentId(int studentId);
	
	int passOpening(String studentNo);
	
	int failOpening(String studentNo);
	
	
	int addTeacherProgress(TeacherProgress teacherProgress);
	
	List<TeacherProgress> getTeacherProgressByTeacherId(int teacherId);
	
	Student getStudentInfoByStudentId(int studentId);
	
	int passProgress(int id);
	
	int failProgress(int id);
	
	
	List<Announcement> showAllAnnouncement();
	
	
	ThesisInformation getInfoByStudentId(int studentId);
	
	int passThesisInformation(int studentId);
	
	int failThesisInformation(int studentId);
	
	int addStudentScore(StudentScore score);
	
	int modifyStudentScore(StudentScore score);
	
	StudentScore showInfoByStudentId(int studentId);
	
	int uploadThesis4Pass(ThesisPaper paper);
	
	List<ThesisPaper> getAllPaper();
	
	
	int updateDoubt(Doubt doubt);
	
	List<Doubt> getAllDoubtByStudentId(int studentId);
}
