package cdu.blog.service;

import cdu.blog.pojo.BlogInfo;
import cdu.blog.pojo.User;

import java.util.List;

public interface BlogInfoService {
    /** 查找所有博客*/
    List<BlogInfo> listAll2();

    /** 添加博客 */
    Integer insert2(BlogInfo blogInfo);

    /** 根据id删除博客 */
    Integer deleteById2(Integer id);

    /** 更新博客 */
    Integer update2(BlogInfo blogInfo);

    /** 根据id查找博客 */
    BlogInfo getById2(Integer id);

}
