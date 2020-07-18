package cdu.blog.mapper;

import cdu.blog.pojo.Log;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogDao {

    boolean insert(Log log);
    boolean delete(int id);
    boolean deleteAll();
    List<Log> findAll();
    List<Log> findByUserId(int id);
    Log findById(int id);
}
