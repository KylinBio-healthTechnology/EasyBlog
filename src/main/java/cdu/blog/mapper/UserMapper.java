package cdu.blog.mapper;

import cdu.blog.pojo.User;

import java.util.List;

public interface UserMapper {
    void addUser(User user);

    void deleteUserById(long id);

    void updateUser(User user);

    User queryById(long id);

    List<User> queryAllUser();


}
