package cdu.blog.mapper;

import java.util.List;

import cdu.blog.pojo.Article;
import cdu.blog.pojo.User;

public interface CmtManage {

	List<Article> selArtCmtMng(User user);
	
	int delComment(int cmtId);
	
	int addComment(int userId,int articalId,String content);
	
/*	List<Com> selCmt(Integer userId);
*/}
