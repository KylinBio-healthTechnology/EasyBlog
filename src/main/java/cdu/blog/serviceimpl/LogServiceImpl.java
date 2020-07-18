package cdu.blog.serviceimpl;

import cdu.blog.mapper.LogDao;
import cdu.blog.pojo.Log;
import cdu.blog.service.LogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LogServiceImpl implements LogService {

    @Resource
    private LogDao logDao;

    @Override
    public List<Log> findAll() {
        return logDao.findAll();
    }

    public List<Log> findByUserId(int id) {
        return logDao.findByUserId(id);
    }

    // 根据 id 查询对应数据
    public Log findById(int id) {
        Log log = logDao.findById(id);
        return log;
    }

    public boolean insert(Log log) {
        return logDao.insert(log);
    }

    public boolean delete(int id) {
        return logDao.delete(id);
    }

    public boolean deleteAll() {
        return logDao.deleteAll();
    }
}
