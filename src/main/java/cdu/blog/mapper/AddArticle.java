package cdu.blog.mapper;

import java.util.List;

import cdu.blog.pojo.Article;
import cdu.blog.pojo.Category;

public interface AddArticle {
	int insArticle(Article article);
	
	List<Category> selArtCategory(Integer id);
}
