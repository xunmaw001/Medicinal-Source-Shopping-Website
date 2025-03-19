package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussbaojianpintuijianDao;
import com.entity.DiscussbaojianpintuijianEntity;
import com.service.DiscussbaojianpintuijianService;
import com.entity.vo.DiscussbaojianpintuijianVO;
import com.entity.view.DiscussbaojianpintuijianView;

@Service("discussbaojianpintuijianService")
public class DiscussbaojianpintuijianServiceImpl extends ServiceImpl<DiscussbaojianpintuijianDao, DiscussbaojianpintuijianEntity> implements DiscussbaojianpintuijianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussbaojianpintuijianEntity> page = this.selectPage(
                new Query<DiscussbaojianpintuijianEntity>(params).getPage(),
                new EntityWrapper<DiscussbaojianpintuijianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussbaojianpintuijianEntity> wrapper) {
		  Page<DiscussbaojianpintuijianView> page =new Query<DiscussbaojianpintuijianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussbaojianpintuijianVO> selectListVO(Wrapper<DiscussbaojianpintuijianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussbaojianpintuijianVO selectVO(Wrapper<DiscussbaojianpintuijianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussbaojianpintuijianView> selectListView(Wrapper<DiscussbaojianpintuijianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussbaojianpintuijianView selectView(Wrapper<DiscussbaojianpintuijianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
