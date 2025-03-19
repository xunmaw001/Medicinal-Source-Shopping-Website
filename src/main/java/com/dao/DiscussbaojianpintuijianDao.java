package com.dao;

import com.entity.DiscussbaojianpintuijianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussbaojianpintuijianVO;
import com.entity.view.DiscussbaojianpintuijianView;


/**
 * 保健品推荐评论表
 * 
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public interface DiscussbaojianpintuijianDao extends BaseMapper<DiscussbaojianpintuijianEntity> {
	
	List<DiscussbaojianpintuijianVO> selectListVO(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
	
	DiscussbaojianpintuijianVO selectVO(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
	
	List<DiscussbaojianpintuijianView> selectListView(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);

	List<DiscussbaojianpintuijianView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
	
	DiscussbaojianpintuijianView selectView(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
	
}
