package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.BaojianpintuijianEntity;
import com.entity.view.BaojianpintuijianView;

import com.service.BaojianpintuijianService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 保健品推荐
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-13 14:51:24
 */
@RestController
@RequestMapping("/baojianpintuijian")
public class BaojianpintuijianController {
    @Autowired
    private BaojianpintuijianService baojianpintuijianService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,BaojianpintuijianEntity baojianpintuijian, HttpServletRequest request){

        EntityWrapper<BaojianpintuijianEntity> ew = new EntityWrapper<BaojianpintuijianEntity>();
		PageUtils page = baojianpintuijianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, baojianpintuijian), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,BaojianpintuijianEntity baojianpintuijian, HttpServletRequest request){
        EntityWrapper<BaojianpintuijianEntity> ew = new EntityWrapper<BaojianpintuijianEntity>();
		PageUtils page = baojianpintuijianService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, baojianpintuijian), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( BaojianpintuijianEntity baojianpintuijian){
       	EntityWrapper<BaojianpintuijianEntity> ew = new EntityWrapper<BaojianpintuijianEntity>();
      	ew.allEq(MPUtil.allEQMapPre( baojianpintuijian, "baojianpintuijian")); 
        return R.ok().put("data", baojianpintuijianService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(BaojianpintuijianEntity baojianpintuijian){
        EntityWrapper< BaojianpintuijianEntity> ew = new EntityWrapper< BaojianpintuijianEntity>();
 		ew.allEq(MPUtil.allEQMapPre( baojianpintuijian, "baojianpintuijian")); 
		BaojianpintuijianView baojianpintuijianView =  baojianpintuijianService.selectView(ew);
		return R.ok("查询保健品推荐成功").put("data", baojianpintuijianView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        BaojianpintuijianEntity baojianpintuijian = baojianpintuijianService.selectById(id);
        return R.ok().put("data", baojianpintuijian);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        BaojianpintuijianEntity baojianpintuijian = baojianpintuijianService.selectById(id);
        return R.ok().put("data", baojianpintuijian);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R thumbsup(@PathVariable("id") String id,String type){
        BaojianpintuijianEntity baojianpintuijian = baojianpintuijianService.selectById(id);
        if(type.equals("1")) {
        	baojianpintuijian.setThumbsupnum(baojianpintuijian.getThumbsupnum()+1);
        } else {
        	baojianpintuijian.setCrazilynum(baojianpintuijian.getCrazilynum()+1);
        }
        baojianpintuijianService.updateById(baojianpintuijian);
        return R.ok();
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody BaojianpintuijianEntity baojianpintuijian, HttpServletRequest request){
    	baojianpintuijian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(baojianpintuijian);

        baojianpintuijianService.insert(baojianpintuijian);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody BaojianpintuijianEntity baojianpintuijian, HttpServletRequest request){
    	baojianpintuijian.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(baojianpintuijian);

        baojianpintuijianService.insert(baojianpintuijian);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody BaojianpintuijianEntity baojianpintuijian, HttpServletRequest request){
        //ValidatorUtils.validateEntity(baojianpintuijian);
        baojianpintuijianService.updateById(baojianpintuijian);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        baojianpintuijianService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<BaojianpintuijianEntity> wrapper = new EntityWrapper<BaojianpintuijianEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = baojianpintuijianService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
