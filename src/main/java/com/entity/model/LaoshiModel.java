package com.entity.model;

import com.entity.LaoshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 老师
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class LaoshiModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 老师姓名
     */
    private String laoshiName;


    /**
     * 老师手机号
     */
    private String laoshiPhone;


    /**
     * 老师身份证号
     */
    private String laoshiIdNumber;


    /**
     * 老师头像
     */
    private String laoshiPhoto;


    /**
     * 性别
     */
    private Integer sexTypes;


    /**
     * 老师邮箱
     */
    private String laoshiEmail;


    /**
     * 创建时间
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
	 * 获取：老师姓名
	 */
    public String getLaoshiName() {
        return laoshiName;
    }


    /**
	 * 设置：老师姓名
	 */
    public void setLaoshiName(String laoshiName) {
        this.laoshiName = laoshiName;
    }
    /**
	 * 获取：老师手机号
	 */
    public String getLaoshiPhone() {
        return laoshiPhone;
    }


    /**
	 * 设置：老师手机号
	 */
    public void setLaoshiPhone(String laoshiPhone) {
        this.laoshiPhone = laoshiPhone;
    }
    /**
	 * 获取：老师身份证号
	 */
    public String getLaoshiIdNumber() {
        return laoshiIdNumber;
    }


    /**
	 * 设置：老师身份证号
	 */
    public void setLaoshiIdNumber(String laoshiIdNumber) {
        this.laoshiIdNumber = laoshiIdNumber;
    }
    /**
	 * 获取：老师头像
	 */
    public String getLaoshiPhoto() {
        return laoshiPhoto;
    }


    /**
	 * 设置：老师头像
	 */
    public void setLaoshiPhoto(String laoshiPhoto) {
        this.laoshiPhoto = laoshiPhoto;
    }
    /**
	 * 获取：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 设置：性别
	 */
    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 获取：老师邮箱
	 */
    public String getLaoshiEmail() {
        return laoshiEmail;
    }


    /**
	 * 设置：老师邮箱
	 */
    public void setLaoshiEmail(String laoshiEmail) {
        this.laoshiEmail = laoshiEmail;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
