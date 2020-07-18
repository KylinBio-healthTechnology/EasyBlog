package cdu.blog.serviceimpl;

import java.util.List;

import cdu.blog.mapper.ApplyMapper;
import cdu.blog.mapper.CategoryManage;
import cdu.blog.mapper.ProFileMapper;
import cdu.blog.mapper.UpdBlogInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdu.blog.mapper.AddArticle;
import cdu.blog.mapper.ArticleMapper;
import cdu.blog.mapper.Cmt;
import cdu.blog.mapper.CmtManage;
import cdu.blog.mapper.CountMappeor;
import cdu.blog.mapper.LoginMapper;
import cdu.blog.mapper.ManageMapper;
import cdu.blog.mapper.MyBlogMapper;
import cdu.blog.mapper.Register;
import cdu.blog.mapper.SysCategoryMapper;
import cdu.blog.pojo.Article;
import cdu.blog.pojo.BlogInfo;
import cdu.blog.pojo.Category;
import cdu.blog.pojo.Com;
import cdu.blog.pojo.Counter;
import cdu.blog.pojo.PageInfo;
import cdu.blog.pojo.Profile;
import cdu.blog.pojo.SysCategory;
import cdu.blog.pojo.User;
import cdu.blog.service.SysCategoryService;

import javax.annotation.Resource;

@Service
public class SysCategoryServiceImpl implements SysCategoryService {
    @Resource
    private SysCategoryMapper sysCategoryMapper;
    @Resource
    private ArticleMapper articleMapper;
    @Resource
    private MyBlogMapper myBlogMapper;
    @Resource
    private LoginMapper loginMapper;
    @Resource
    private Register register;
    @Resource
    private ManageMapper manageMapper;
    @Resource
    private CategoryManage categoryManage;
    @Resource
    private CmtManage cmtManage;
    @Resource
    private ProFileMapper proFileMapper;
    @Resource
    private UpdBlogInfo blogInfo;
    @Resource
    private AddArticle addArticle;
    @Resource
    private Cmt cmt;
    @Resource
    private ApplyMapper applyMapper;
    @Resource
    private CountMappeor countMappeor;

    @Override
    public List<SysCategory> getAllSysCategory() {
        return sysCategoryMapper.getAllSysCategory();
    }

    @Override
    public List<Article> getActiveUser(int num) {
        return sysCategoryMapper.getActiveUser(num);
    }

    @Override
    public List<Article> topTenArticle() {
        return sysCategoryMapper.topTenArticle();
    }

    @Override
    public int addCount(Integer count, Integer id) {
        return sysCategoryMapper.addCount(count, id);
    }

    @Override
    public List<Article> search(String value) {
        return sysCategoryMapper.search(value);
    }


    @Override
    public PageInfo pageControl(String pageNum) {
        int articleCount = sysCategoryMapper.ArticleCount();
        PageInfo pageInfo = new PageInfo(pageNum, articleCount);
        List<Article> page = sysCategoryMapper.page(pageInfo);
        pageInfo.setLists(page);
        return pageInfo;
    }


//	分割线=================文章管理

    @Override
    public Article ArticleComment(Integer artId) {
        return articleMapper.ArticleComment(artId);
    }

    @Override
    public int removeArticle(Integer artId) {
        return articleMapper.removeArticle(artId);
    }

    @Override
    public Article selArticleInfo(Integer artId) {
        return articleMapper.selArticleInfo(artId);
    }

    @Override
    public int updArt(String title, String summary, String content, Integer categoryId, Integer sysCategoryId, Integer id) {
        return articleMapper.updArt(title, summary, content, categoryId, sysCategoryId, id);
    }


//	分割线=================

    @Override
    public BlogInfo getMyBlog(User user) {
        return myBlogMapper.getMyBlog(user);
    }


//	分割线=================登录


    @Override
    public User getLogin(User user) {
        return loginMapper.getLogin(user);

    }


//分割线=================注册


    @Override
    public User selRegister(User user) {
        return register.selRegister(user);
    }

    @Override
    public int insRegister(User user) {
        return register.insRegister(user);
    }

    @Override
    public User selByEmail(User user) {
        return register.selByEmail(user);

    }


//分割线=================注册


    @Override
    public List<Article> selManage(Integer id) {
        return manageMapper.selManage(id);
    }
    
//分割线=================分类管理


    @Override
    public List<Category> selCategory(Integer userId) {
        return categoryManage.selCategory(userId);
    }

    @Override
    public int insCategory(Integer id, String name) {
        return categoryManage.insCategory(id, name);
    }

    @Override
    public int deleteCategory(int id) {
        return categoryManage.deleteCategory(id);
    }

    @Override
    public int updCategory(String categoryName, Integer cgId) {
        return categoryManage.updCategory(categoryName, cgId);
    }

    @Override
    public Category selCg(Integer cgId) {
        return categoryManage.selCg(cgId);
    }

    @Override
    public int updCateArticles(Integer categoryId, Integer userId) {
        return categoryManage.updCateArticles(categoryId, userId);
    }


//分割线=================评论管理


    @Override
    public List<Article> selArtCmtMng(User user) {
        return cmtManage.selArtCmtMng(user);
    }

    @Override
    public int delComment(int cmtId) {
        return cmtManage.delComment(cmtId);
    }

    @Override
    public int addComment(int userId, int articalId, String content) {
        return cmtManage.addComment(userId, articalId, content);
    }

    /*
    @Override
    public List<Com> selCmt(Integer userId) {
        return cmtManage.selCmt(userId);
    }*/
    @Override
    public List<Com> selCmt(Integer userId) {
        return cmt.selCmt(userId);
    }


//分割线=================个人简介


    @Override
    public int updProfile(Profile profile) {
        return proFileMapper.updProfile(profile);
    }

    @Override
    public int updPassword(String newPwd, Integer userId) {
        return proFileMapper.updPassword(newPwd, userId);
    }

    @Override
    public User selOldPwd(String password, Integer userId) {
        return proFileMapper.selOldPwd(password, userId);
    }

    @Override
    public Profile readOneProfile(Integer userId) {
        return proFileMapper.readOneProfile(userId);
    }


//分割线=================修改博客信息


    @Override
    public BlogInfo selBlogInfo(Integer userId) {
        return blogInfo.selBlogInfo(userId);
    }

    @Override
    public int insBlog(BlogInfo blogInfos) {
        return blogInfo.insBlog(blogInfos);
    }

    @Override
    public int updBlog(BlogInfo blogInfos) {
        return blogInfo.updBlog(blogInfos);
    }

    @Override
    public int insArticle(Article article) {
        return addArticle.insArticle(article);
    }

    @Override
    public List<Category> selArtCategory(Integer id) {
        return addArticle.selArtCategory(id);
    }


    @Override
    public int applyBlog(String blogName, Integer userId, String description, String annoucement) {
        return applyMapper.applyBlog(blogName, userId, description, annoucement);
    }

    @Override
    public int updIsApply(Integer userId) {
        return applyMapper.updIsApply(userId);
    }

    @Override
    public int setCountNum(Integer num) {
        return countMappeor.setCountNum(num);
    }

    @Override
    public Counter getCountNum() {
        return countMappeor.getCountNum();
    }


}
