package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BaojianpintuijianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BaojianpintuijianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BaojianpintuijianView;


/**
 * 保健品推荐
 *
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public interface BaojianpintuijianService extends IService<BaojianpintuijianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BaojianpintuijianVO> selectListVO(Wrapper<BaojianpintuijianEntity> wrapper);
   	
   	BaojianpintuijianVO selectVO(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
   	
   	List<BaojianpintuijianView> selectListView(Wrapper<BaojianpintuijianEntity> wrapper);
   	
   	BaojianpintuijianView selectView(@Param("ew") Wrapper<BaojianpintuijianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BaojianpintuijianEntity> wrapper);
   	
}

