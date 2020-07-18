package cdu.blog.mapper;

import cdu.blog.pojo.Article;

import java.util.List;

public interface ArticleManageMapper {
    void addArticle(Article article);

    void deleteArticleById(long id);

    void updateArticle(Article article);

    Article queryById(long id);

    List<Article> queryAllArticle();


}
