package cdu.blog.service;

import cdu.blog.pojo.Log;

import java.util.List;

public interface LogService {

    boolean insert(Log log);
    boolean delete(int id);
    boolean deleteAll();
    List<Log> findAll();
    List<Log> findByUserId(int id);
    Log findById(int id);
}
