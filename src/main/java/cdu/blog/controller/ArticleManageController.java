package cdu.blog.controller;

import cdu.blog.aop.SystemControllerLog;
import cdu.blog.pojo.Article;
import cdu.blog.service.ArticleManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/articleManage")
public class ArticleManageController {
    @Autowired
    private ArticleManageService articleManageService;

    @RequestMapping("/allArticleManage")
    public String list(Model model) {
        List<Article> list;
        list = articleManageService.queryAllArticle();
        model.addAttribute("list", list);
        return "allArticleManage";
    }

    @RequestMapping("/del/{id}")
    public String deleteArticle(@PathVariable("id") Long id) {
        articleManageService.deleteArticle(id);
        return "redirect:/articleManage/allArticleManage";
    }

}


