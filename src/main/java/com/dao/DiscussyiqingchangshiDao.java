package com.dao;

import com.entity.DiscussyiqingchangshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussyiqingchangshiVO;
import com.entity.view.DiscussyiqingchangshiView;


/**
 * 疫情常识评论表
 * 
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public interface DiscussyiqingchangshiDao extends BaseMapper<DiscussyiqingchangshiEntity> {
	
	List<DiscussyiqingchangshiVO> selectListVO(@Param("ew") Wrapper<DiscussyiqingchangshiEntity> wrapper);
	
	DiscussyiqingchangshiVO selectVO(@Param("ew") Wrapper<DiscussyiqingchangshiEntity> wrapper);
	
	List<DiscussyiqingchangshiView> selectListView(@Param("ew") Wrapper<DiscussyiqingchangshiEntity> wrapper);

	List<DiscussyiqingchangshiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyiqingchangshiEntity> wrapper);
	
	DiscussyiqingchangshiView selectView(@Param("ew") Wrapper<DiscussyiqingchangshiEntity> wrapper);
	
}
