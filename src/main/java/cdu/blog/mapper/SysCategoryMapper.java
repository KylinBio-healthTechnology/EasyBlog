package cdu.blog.mapper;

import java.util.List;


import cdu.blog.pojo.Article;
import cdu.blog.pojo.PageInfo;
import cdu.blog.pojo.SysCategory;

public interface SysCategoryMapper {
	//��վ����
	List<SysCategory> getAllSysCategory();
	//<!-- ��Ծ���� -->
	List<Article> getActiveUser(int num);
//	ǰʮ����
	List<Article>topTenArticle();
//	��������
	int ArticleCount();
//	��ҳ
	List<Article>page(PageInfo pageInfo);
//	
	int addCount(Integer count,Integer id);
	
	
	List<Article> search(String value);
	
}
