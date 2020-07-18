package cdu.blog.mapper;

import org.apache.ibatis.annotations.Insert;

import cdu.blog.pojo.Girl;

public interface GirlMapper {

	
	@Insert("insert into girl(image) values(#{image})")
	int addGirl(Girl girl);
}
