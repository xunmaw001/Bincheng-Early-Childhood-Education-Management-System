package com.entity.model;

import com.entity.XueshengkaoqinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 学生考勤
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class XueshengkaoqinModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 学生
     */
    private Integer yonghuId;


    /**
     * 考勤结果
     */
    private Integer xueshengkaoqinTypes;


    /**
     * 考勤详情
     */
    private String xueshengkaoqinContent;


    /**
     * 考勤日期
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date kaoqinTime;


    /**
     * 录入时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间 show3 listShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：学生
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：学生
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：考勤结果
	 */
    public Integer getXueshengkaoqinTypes() {
        return xueshengkaoqinTypes;
    }


    /**
	 * 设置：考勤结果
	 */
    public void setXueshengkaoqinTypes(Integer xueshengkaoqinTypes) {
        this.xueshengkaoqinTypes = xueshengkaoqinTypes;
    }
    /**
	 * 获取：考勤详情
	 */
    public String getXueshengkaoqinContent() {
        return xueshengkaoqinContent;
    }


    /**
	 * 设置：考勤详情
	 */
    public void setXueshengkaoqinContent(String xueshengkaoqinContent) {
        this.xueshengkaoqinContent = xueshengkaoqinContent;
    }
    /**
	 * 获取：考勤日期
	 */
    public Date getKaoqinTime() {
        return kaoqinTime;
    }


    /**
	 * 设置：考勤日期
	 */
    public void setKaoqinTime(Date kaoqinTime) {
        this.kaoqinTime = kaoqinTime;
    }
    /**
	 * 获取：录入时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：录入时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间 show3 listShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show3 listShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
