package com.dao;

import com.entity.BaojianpintuijianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BaojianpintuijianVO;
import com.entity.view.BaojianpintuijianView;


/**
 * 保健品推荐
 * 
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public interface BaojianpintuijianDao extends BaseMapper<BaojianpintuijianEntity> {
	
	List<BaojianpintuijianVO> selectListVO(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
	
	BaojianpintuijianVO selectVO(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
	
	List<BaojianpintuijianView> selectListView(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);

	List<BaojianpintuijianView> selectListView(Pagination page,@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
	
	BaojianpintuijianView selectView(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
	
}
