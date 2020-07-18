package cdu.blog.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cdu.blog.pojo.BlogInfo;
import cdu.blog.service.BlogInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cdu.blog.pojo.User;
import cdu.blog.service.UserService;

@Controller
@RequestMapping("/blogInfo")
public class BlogInfoController{
        @Autowired
        BlogInfoService blogInfoService;

        @RequestMapping(value = "/all", method = RequestMethod.GET)
        @ResponseBody
        private Map<String, Object> listAll() {
            List<BlogInfo> blogInfos = blogInfoService.listAll2();
            System.out.println(blogInfos);
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("code", 0);
            map.put("msg", "");
            map.put("count", 4);
            map.put("data", blogInfos);
            return map;
        }

        @RequestMapping(value = "", method = RequestMethod.POST)
        @ResponseBody
        private Map<String, Object> add(@RequestBody BlogInfo blogInfo) {
            int result = blogInfoService.insert2(blogInfo);
            Map<String, Object> map = new HashMap<String, Object>();
            if (result > 0) {
                map.put("status", 1);
            } else {
                map.put("status", 0);
            }
            return map;
        }

        @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
        @ResponseBody
        private Map<String, Object> deleteById(@PathVariable("id") int id) {
            int result = blogInfoService.deleteById2(id);
            Map<String, Object> map = new HashMap<String, Object>();
            if (result > 0) {
                map.put("status", 1);
            } else {
                map.put("status", 0);
            }
            return map;
        }

        @RequestMapping(value = "", method = RequestMethod.PUT)
        @ResponseBody
        private Map<String, Object> update(@RequestBody BlogInfo blogInfo) {
            int result = blogInfoService.update2(blogInfo);
            Map<String, Object> map = new HashMap<String, Object>();
            if (result > 0) {
                map.put("status", 1);
            } else {
                map.put("status", 0);
            }
            return map;
        }
    }