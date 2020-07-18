package cdu.blog.controller;

import cdu.blog.pojo.User;
import cdu.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/allUser")
    public String list(Model model) {
        List<User> list;
        list = userService.queryAllUser();
        model.addAttribute("list", list);
        return "allUser";
    }

    @RequestMapping("toAddUser")
    public String toAddUser() {
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user) {
        userService.addUser(user);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/del/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.deleteUser(id);
        return "redirect:/user/allUser";
    }

    @RequestMapping("toUpdateUser")
    public String toUpdateUser(Model model, Long id) {
        model.addAttribute("user", userService.queryById(id));
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, User user) {
        userService.updateUser(user);
        user = userService.queryById(user.getId());
        model.addAttribute("paper", user);
        return "redirect:/user/allUser";
    }
}


