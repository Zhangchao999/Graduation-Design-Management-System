package com.zc.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zc.entity.Student;
import com.zc.entity.Teacher;
import com.zc.entity.User;
import com.zc.service.IDepartmentService;
import com.zc.service.IMajorService;
import com.zc.service.IStudentService;
import com.zc.service.ITeacherService;
import com.zc.service.IUserService;

/**
 * @date 2018-4-6
 * @author zhangC
 * adminLogin() 管理员登陆
 * teacherLogin() 教师登陆
 * studentLogin() 学生登陆
 * quitSystem() 退出系统
 * modifyPassword() 修改密码，由于管理员，教师，学生的修改密码相同，所以只用一个controller作为修改。
 *
 * @date 2018-4-11
 * @author zhangC
 * 修改了teacherLogin() 方法，新增了查询教师信息的功能。并且写入session中。
 *
 */

@Controller
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ITeacherService teacherService;
	
	@Autowired
	private IDepartmentService departmentService;
	
	@Autowired
	private IStudentService studentService;
	
	@Autowired
	private IMajorService majorService;
	
	@RequestMapping(value="/admin/login")
	public String adminLogin(String userNo,String password,Model model,HttpServletRequest request) {
		User currentUser = userService.login(userNo, password);
		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "error.jsp";
		}
		if(currentUser.getPermission()==3) {
			// request.getSession().setAttribute("userNo", userNo);
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(108000);
			
			session.setAttribute("currentUser", currentUser);
			//model.addAttribute("userNo", userNo);
			return "admin/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是管理员");
			return "error.jsp";
		}
	}
	
	@RequestMapping(value="/teacher/login")
	public String teacherLogin(String userNo,String password,Model model,HttpServletRequest request) {
		
		User currentUser = userService.login(userNo, password);
		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "error.jsp";
		}
		if(currentUser.getPermission()==2) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(108000);
			// 在t_user表的信息
			session.setAttribute("currentUser", currentUser);
			
			// 完整的teacher信息
			Teacher teacher = teacherService.showInfoByNo(userNo);
			int depId = teacher.getDepartmentId();
			String depName = departmentService.getNameById(depId);
			teacher.setDepartmentName(depName);
			
			session.setAttribute("teacher", teacher);
			//model.addAttribute("userNo", userNo);
			return "teacher/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是教师");
			return "error.jsp";
		}
	}
	@RequestMapping(value="/student/login")
	public String studentLogin(String userNo,String password,Model model,HttpServletRequest request) {
		
		User currentUser = userService.login(userNo, password);
		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "error.jsp";
		}
		if(currentUser.getPermission()==1) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(108000);
			// t_user 表中的关于学生的信息
			session.setAttribute("currentUser", currentUser);
			
			// t_student 表中的信息
			Student student = studentService.getStudentByNO(userNo);
			int majorId = student.getMajorId();
			String majorName = majorService.getNameById(majorId);
			student.setMajorName(majorName);
			
			session.setAttribute("student", student);
			// model.addAttribute("userNo", userNo);
			return "student/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是学生");
			return "error.jsp";
		}
	}
	
	@RequestMapping(value="/quit")
	public String quitSystem(Model model,HttpServletRequest request) { 
		
		request.getSession().invalidate();
		
		return "../../index.jsp";
	}
	
	@RequestMapping(value="/modifyPassword",method=RequestMethod.POST)
	public String modifyPassword(Model model,String newPassword1,String currentUserNo) {
		
		/*System.out.println("新的密码："+newPassword1);
		System.out.println("账户："+currentUserNo);*/
		int num = userService.modifyPassword(currentUserNo, newPassword1);
		System.out.println("修改了"+num+"条数据");
		model.addAttribute("num", num);
		return "modifySuccess.jsp";
	}
	
}
