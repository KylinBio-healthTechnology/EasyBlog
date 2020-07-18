package cdu.blog.service;

import cdu.blog.pojo.User;

import java.util.List;

public interface UserService {
    void addUser(User user);

    void deleteUser(long id);

    void updateUser(User user);

    User queryById(long id);

    List<User> queryAllUser();

}
