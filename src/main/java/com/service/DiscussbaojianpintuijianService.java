package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussbaojianpintuijianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussbaojianpintuijianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussbaojianpintuijianView;


/**
 * 保健品推荐评论表
 *
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public interface DiscussbaojianpintuijianService extends IService<DiscussbaojianpintuijianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussbaojianpintuijianVO> selectListVO(Wrapper<DiscussbaojianpintuijianEntity> wrapper);
   	
   	DiscussbaojianpintuijianVO selectVO(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
   	
   	List<DiscussbaojianpintuijianView> selectListView(Wrapper<DiscussbaojianpintuijianEntity> wrapper);
   	
   	DiscussbaojianpintuijianView selectView(@Param("ew") Wrapper<DiscussbaojianpintuijianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussbaojianpintuijianEntity> wrapper);
   	
}

