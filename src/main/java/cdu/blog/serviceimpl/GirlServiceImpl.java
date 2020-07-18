package cdu.blog.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdu.blog.mapper.GirlMapper;
import cdu.blog.pojo.Girl;
import cdu.blog.service.GirlService;
@Service
public class GirlServiceImpl implements GirlService{
    @Autowired
    private GirlMapper girlMapper;
	
	
	@Override
	public int addGirl(Girl girl) {
		return girlMapper.addGirl(girl);
	}

}
