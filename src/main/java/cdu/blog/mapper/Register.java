package cdu.blog.mapper;

import cdu.blog.pojo.User;

public interface Register {
	
	User selRegister(User user);
	
	User selByEmail(User user);

	int  insRegister(User user);
	
	
}
