package cdu.blog.mapper;

import cdu.blog.pojo.Admin;

public interface AdminDao {

	/**
	 * ����Ա��¼��֤
	 */
	public abstract Admin login(String userName, String passWord);

}