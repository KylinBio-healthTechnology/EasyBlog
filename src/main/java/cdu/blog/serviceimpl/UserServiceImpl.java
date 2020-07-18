package cdu.blog.serviceimpl;

import cdu.blog.mapper.UserMapper;
import cdu.blog.pojo.User;
import cdu.blog.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userDao;

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void deleteUser(long id) {
        userDao.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public User queryById(long id) {
        return userDao.queryById(id);
    }

    @Override
    public List<User> queryAllUser() {
        List<User> users = userDao.queryAllUser();
        return users;
    }

}
