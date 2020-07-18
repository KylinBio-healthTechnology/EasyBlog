package cdu.blog.mapper;

import cdu.blog.pojo.Admin;

public interface AdminDao {

	/**
	 * 管理员登录验证
	 */
	public abstract Admin login(String userName, String passWord);

}