package cdu.blog.mapper;

import cdu.blog.pojo.BlogInfo;

public interface UpdBlogInfo {

	BlogInfo selBlogInfo(Integer userId);

	int insBlog(BlogInfo blogInfo);
	
	int updBlog(BlogInfo blogInfos);
}
