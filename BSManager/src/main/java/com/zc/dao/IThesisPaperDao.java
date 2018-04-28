package com.zc.dao;

import java.util.List;

import com.zc.entity.ThesisPaper;

/**
 * @date 2018-4-18
 * @author zhangC
 * 添加最终论文
 * 查询所有论文
 *
 */

public interface IThesisPaperDao {
	
	int addThesisPaper(ThesisPaper paper);
	
	List<ThesisPaper> getAllInfo();
	
	
}
