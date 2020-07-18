package cdu.blog.service;

import cdu.blog.pojo.Article;

import java.util.List;

public interface ArticleManageService {
    void addArticle(Article article);

    void deleteArticle(long id);

    void updateArticle(Article article);

    Article queryById(long id);

    List<Article> queryAllArticle();

}
