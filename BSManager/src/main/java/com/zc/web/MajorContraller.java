package com.zc.web;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zc.entity.Major;
import com.zc.service.IMajorService;

import net.sf.json.JSONArray;

/**
 * 
 * @author zhangC
 * 
 * showAllMajor() 获得所有专业信息
 *
 */

@Controller

public class MajorContraller {
	
	@Autowired
	private IMajorService majorService;
	
	@RequestMapping(value="/getAllMajor")
	public String showAllMajor(HttpServletResponse response,HttpServletRequest request) throws Exception {
		List<Major> majors = majorService.allMajor();
		
		JSONArray json =  JSONArray.fromObject(majors);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter write = response.getWriter();
		write.write(json.toString());
		write.close();
		return "admin/adminStudentAdd.jsp";
	}
}
