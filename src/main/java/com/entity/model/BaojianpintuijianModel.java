package com.entity.model;

import com.entity.BaojianpintuijianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 保健品推荐
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
public class BaojianpintuijianModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 推荐药品
	 */
	
	private String tuijianyaopin;
		
	/**
	 * 药品图片
	 */
	
	private String yaopintupian;
		
	/**
	 * 适用人群
	 */
	
	private String shiyongrenqun;
		
	/**
	 * 适用季节
	 */
	
	private String shiyongjijie;
		
	/**
	 * 不良反应
	 */
	
	private String buliangfanying;
		
	/**
	 * 用量用法
	 */
	
	private String yongliangyongfa;
		
	/**
	 * 药品功效
	 */
	
	private String yaopingongxiao;
		
	/**
	 * 用药指南
	 */
	
	private String yongyaozhinan;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
				
	
	/**
	 * 设置：推荐药品
	 */
	 
	public void setTuijianyaopin(String tuijianyaopin) {
		this.tuijianyaopin = tuijianyaopin;
	}
	
	/**
	 * 获取：推荐药品
	 */
	public String getTuijianyaopin() {
		return tuijianyaopin;
	}
				
	
	/**
	 * 设置：药品图片
	 */
	 
	public void setYaopintupian(String yaopintupian) {
		this.yaopintupian = yaopintupian;
	}
	
	/**
	 * 获取：药品图片
	 */
	public String getYaopintupian() {
		return yaopintupian;
	}
				
	
	/**
	 * 设置：适用人群
	 */
	 
	public void setShiyongrenqun(String shiyongrenqun) {
		this.shiyongrenqun = shiyongrenqun;
	}
	
	/**
	 * 获取：适用人群
	 */
	public String getShiyongrenqun() {
		return shiyongrenqun;
	}
				
	
	/**
	 * 设置：适用季节
	 */
	 
	public void setShiyongjijie(String shiyongjijie) {
		this.shiyongjijie = shiyongjijie;
	}
	
	/**
	 * 获取：适用季节
	 */
	public String getShiyongjijie() {
		return shiyongjijie;
	}
				
	
	/**
	 * 设置：不良反应
	 */
	 
	public void setBuliangfanying(String buliangfanying) {
		this.buliangfanying = buliangfanying;
	}
	
	/**
	 * 获取：不良反应
	 */
	public String getBuliangfanying() {
		return buliangfanying;
	}
				
	
	/**
	 * 设置：用量用法
	 */
	 
	public void setYongliangyongfa(String yongliangyongfa) {
		this.yongliangyongfa = yongliangyongfa;
	}
	
	/**
	 * 获取：用量用法
	 */
	public String getYongliangyongfa() {
		return yongliangyongfa;
	}
				
	
	/**
	 * 设置：药品功效
	 */
	 
	public void setYaopingongxiao(String yaopingongxiao) {
		this.yaopingongxiao = yaopingongxiao;
	}
	
	/**
	 * 获取：药品功效
	 */
	public String getYaopingongxiao() {
		return yaopingongxiao;
	}
				
	
	/**
	 * 设置：用药指南
	 */
	 
	public void setYongyaozhinan(String yongyaozhinan) {
		this.yongyaozhinan = yongyaozhinan;
	}
	
	/**
	 * 获取：用药指南
	 */
	public String getYongyaozhinan() {
		return yongyaozhinan;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
			
}
