package com.entity.view;

import com.entity.DiscussbaojianpintuijianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 保健品推荐评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
@TableName("discussbaojianpintuijian")
public class DiscussbaojianpintuijianView  extends DiscussbaojianpintuijianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussbaojianpintuijianView(){
	}
 
 	public DiscussbaojianpintuijianView(DiscussbaojianpintuijianEntity discussbaojianpintuijianEntity){
 	try {
			BeanUtils.copyProperties(this, discussbaojianpintuijianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
