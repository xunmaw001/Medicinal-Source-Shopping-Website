package com.entity.view;

import com.entity.BaojianpintuijianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 保健品推荐
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
@TableName("baojianpintuijian")
public class BaojianpintuijianView  extends BaojianpintuijianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BaojianpintuijianView(){
	}
 
 	public BaojianpintuijianView(BaojianpintuijianEntity baojianpintuijianEntity){
 	try {
			BeanUtils.copyProperties(this, baojianpintuijianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
