package cdu.blog.controller;

import cdu.blog.aop.SystemControllerLog;
import cdu.blog.pojo.Log;
import cdu.blog.service.LogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/log")
public class LogController {

    @Autowired
    private LogService logService;

    //获取所有日志列表
    @RequestMapping("/allLog")
    public String getAllLog( HttpServletRequest request, Model model){
        List<Log> log=logService.findAll();
        model.addAttribute("logList",log);
        request.setAttribute("logList",log);
        return "/allLog";
    }
    // 删除日志
    @RequestMapping("/delLog")
    public String delUser(int id, HttpServletRequest request, Model model) {
        request.setAttribute("log", logService.delete(id));
        model.addAttribute("log", logService.delete(id));
        return "redirect:/log/allLog";
    }

}

