package cdu.blog.serviceimpl;

import cdu.blog.mapper.ArticleManageMapper;
import cdu.blog.pojo.Article;
import cdu.blog.service.ArticleManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleManageServiceImpl implements ArticleManageService {

    @Autowired
    private ArticleManageMapper articleManageDao;

    @Override
    public void addArticle(Article article) {
        articleManageDao.addArticle(article);
    }

    @Override
    public void deleteArticle(long id) {
        articleManageDao.deleteArticleById(id);
    }

    @Override
    public void updateArticle(Article article) {
        articleManageDao.updateArticle(article);
    }

    @Override
    public Article queryById(long id) {
        return articleManageDao.queryById(id);
    }

    @Override
    public List<Article> queryAllArticle() {
        List<Article> articles = articleManageDao.queryAllArticle();
        return articles;
    }
}
