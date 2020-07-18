package cdu.blog.serviceimpl;

import cdu.blog.mapper.BlogInfoMapper;
import cdu.blog.mapper.UserMapper;
import cdu.blog.pojo.BlogInfo;

import cdu.blog.service.BlogInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogInfoServiceImpl implements BlogInfoService {
    @Autowired
    BlogInfoMapper blogInfoDao;

    @Override
    public List<BlogInfo> listAll2() {
        return blogInfoDao.listAll2();
    }

    @Override
    public Integer insert2(BlogInfo blogInfo) {
        return blogInfoDao.insert2(blogInfo);
    }

    @Override
    public Integer deleteById2(Integer id) {
        return blogInfoDao.deleteById2(id);
    }

    @Override
    public Integer update2(BlogInfo blogInfo) {
        return blogInfoDao.update2(blogInfo);
    }

    @Override
    public BlogInfo getById2(Integer id) {
        return blogInfoDao.getById2(id);
    }
}
