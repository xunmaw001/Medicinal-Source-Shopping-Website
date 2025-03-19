package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 疫情常识
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
@TableName("yiqingchangshi")
public class YiqingchangshiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YiqingchangshiEntity() {
		
	}
	
	public YiqingchangshiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 防疫技巧
	 */
					
	private String fangyijiqiao;
	
	/**
	 * 封面图片
	 */
					
	private String fengmiantupian;
	
	/**
	 * 在线视频
	 */
					
	private String zaixianshipin;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	/**
	 * 详情内容
	 */
					
	private String xiangqingneirong;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：防疫技巧
	 */
	public void setFangyijiqiao(String fangyijiqiao) {
		this.fangyijiqiao = fangyijiqiao;
	}
	/**
	 * 获取：防疫技巧
	 */
	public String getFangyijiqiao() {
		return fangyijiqiao;
	}
	/**
	 * 设置：封面图片
	 */
	public void setFengmiantupian(String fengmiantupian) {
		this.fengmiantupian = fengmiantupian;
	}
	/**
	 * 获取：封面图片
	 */
	public String getFengmiantupian() {
		return fengmiantupian;
	}
	/**
	 * 设置：在线视频
	 */
	public void setZaixianshipin(String zaixianshipin) {
		this.zaixianshipin = zaixianshipin;
	}
	/**
	 * 获取：在线视频
	 */
	public String getZaixianshipin() {
		return zaixianshipin;
	}
	/**
	 * 设置：发布日期
	 */
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
	/**
	 * 设置：详情内容
	 */
	public void setXiangqingneirong(String xiangqingneirong) {
		this.xiangqingneirong = xiangqingneirong;
	}
	/**
	 * 获取：详情内容
	 */
	public String getXiangqingneirong() {
		return xiangqingneirong;
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
