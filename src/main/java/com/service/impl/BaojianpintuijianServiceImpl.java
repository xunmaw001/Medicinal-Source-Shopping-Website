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


import com.dao.BaojianpintuijianDao;
import com.entity.BaojianpintuijianEntity;
import com.service.BaojianpintuijianService;
import com.entity.vo.BaojianpintuijianVO;
import com.entity.view.BaojianpintuijianView;

@Service("baojianpintuijianService")
public class BaojianpintuijianServiceImpl extends ServiceImpl<BaojianpintuijianDao, BaojianpintuijianEntity> implements BaojianpintuijianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BaojianpintuijianEntity> page = this.selectPage(
                new Query<BaojianpintuijianEntity>(params).getPage(),
                new EntityWrapper<BaojianpintuijianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BaojianpintuijianEntity> wrapper) {
		  Page<BaojianpintuijianView> page =new Query<BaojianpintuijianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BaojianpintuijianVO> selectListVO(Wrapper<BaojianpintuijianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BaojianpintuijianVO selectVO(Wrapper<BaojianpintuijianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BaojianpintuijianView> selectListView(Wrapper<BaojianpintuijianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BaojianpintuijianView selectView(Wrapper<BaojianpintuijianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
