package com.zc.service;

import com.zc.entity.User;

/**
 * 
 * @author zhangC
 * 
 * 验证登陆
 * 根据no获得用户信息
 * 修改密码
 * 
 *
 */
public interface IUserService {
	public User login(String userNo,String password);
	
	public User getPassword(String userNo);
	
	public int modifyPassword(String userNo ,String password);
}
