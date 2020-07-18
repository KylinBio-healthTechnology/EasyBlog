package cdu.blog.mapper;

import java.util.List;

import cdu.blog.pojo.Article;

public interface ManageMapper {

	List<Article> selManage(Integer id);
}
