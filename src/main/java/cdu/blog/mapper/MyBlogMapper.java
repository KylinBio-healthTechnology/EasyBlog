package cdu.blog.mapper;

import cdu.blog.pojo.BlogInfo;
import cdu.blog.pojo.User;

public interface MyBlogMapper {
	BlogInfo getMyBlog(User user);
}
