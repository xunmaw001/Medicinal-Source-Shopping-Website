package com.entity.view;

import com.entity.DiscussyiqingchangshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 疫情常识评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
@TableName("discussyiqingchangshi")
public class DiscussyiqingchangshiView  extends DiscussyiqingchangshiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyiqingchangshiView(){
	}
 
 	public DiscussyiqingchangshiView(DiscussyiqingchangshiEntity discussyiqingchangshiEntity){
 	try {
			BeanUtils.copyProperties(this, discussyiqingchangshiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
