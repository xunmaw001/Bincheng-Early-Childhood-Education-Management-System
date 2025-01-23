package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.FeiyongEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 缴费
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("feiyong")
public class FeiyongView extends FeiyongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 缴费类型的值
	*/
	@ColumnInfo(comment="缴费类型的字典表值",type="varchar(200)")
	private String feiyongValue;
	/**
	* 缴费状态的值
	*/
	@ColumnInfo(comment="缴费状态的字典表值",type="varchar(200)")
	private String feiyongZhuangtaiValue;

	//级联表 班级
		/**
		* 班级编号
		*/

		@ColumnInfo(comment="班级编号",type="varchar(200)")
		private String banjiUuidNumber;
		/**
		* 班级名称
		*/

		@ColumnInfo(comment="班级名称",type="varchar(200)")
		private String banjiName;
		/**
		* 班级位置
		*/

		@ColumnInfo(comment="班级位置",type="varchar(200)")
		private String banjiAddress;
		/**
		* 班级备注
		*/

		@ColumnInfo(comment="班级备注",type="longtext")
		private String banjiContent;
	//级联表 老师
		/**
		* 老师姓名
		*/

		@ColumnInfo(comment="老师姓名",type="varchar(200)")
		private String laoshiName;
		/**
		* 老师手机号
		*/

		@ColumnInfo(comment="老师手机号",type="varchar(200)")
		private String laoshiPhone;
		/**
		* 老师身份证号
		*/

		@ColumnInfo(comment="老师身份证号",type="varchar(200)")
		private String laoshiIdNumber;
		/**
		* 老师头像
		*/

		@ColumnInfo(comment="老师头像",type="varchar(200)")
		private String laoshiPhoto;
		/**
		* 老师邮箱
		*/

		@ColumnInfo(comment="老师邮箱",type="varchar(200)")
		private String laoshiEmail;
	//级联表 学生
		/**
		* 学生姓名
		*/

		@ColumnInfo(comment="学生姓名",type="varchar(200)")
		private String yonghuName;
		/**
		* 学生手机号
		*/

		@ColumnInfo(comment="学生手机号",type="varchar(200)")
		private String yonghuPhone;
		/**
		* 学生身份证号
		*/

		@ColumnInfo(comment="学生身份证号",type="varchar(200)")
		private String yonghuIdNumber;
		/**
		* 学生头像
		*/

		@ColumnInfo(comment="学生头像",type="varchar(200)")
		private String yonghuPhoto;
		/**
		* 学生邮箱
		*/

		@ColumnInfo(comment="学生邮箱",type="varchar(200)")
		private String yonghuEmail;
		/**
		* 余额
		*/
		@ColumnInfo(comment="余额",type="decimal(10,2)")
		private Double newMoney;

	//重复字段
			/**
			* 重复字段 的types
			*/
			@ColumnInfo(comment="重复字段 的types",type="Integer")
			private Integer sexTypes;
				@ColumnInfo(comment="重复字段 的值",type="varchar(200)")
				private String sexValue;


	public FeiyongView() {

	}

	public FeiyongView(FeiyongEntity feiyongEntity) {
		try {
			BeanUtils.copyProperties(this, feiyongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 缴费类型的值
	*/
	public String getFeiyongValue() {
		return feiyongValue;
	}
	/**
	* 设置： 缴费类型的值
	*/
	public void setFeiyongValue(String feiyongValue) {
		this.feiyongValue = feiyongValue;
	}
	//当前表的
	/**
	* 获取： 缴费状态的值
	*/
	public String getFeiyongZhuangtaiValue() {
		return feiyongZhuangtaiValue;
	}
	/**
	* 设置： 缴费状态的值
	*/
	public void setFeiyongZhuangtaiValue(String feiyongZhuangtaiValue) {
		this.feiyongZhuangtaiValue = feiyongZhuangtaiValue;
	}


	//级联表的get和set 班级

		/**
		* 获取： 班级编号
		*/
		public String getBanjiUuidNumber() {
			return banjiUuidNumber;
		}
		/**
		* 设置： 班级编号
		*/
		public void setBanjiUuidNumber(String banjiUuidNumber) {
			this.banjiUuidNumber = banjiUuidNumber;
		}

		/**
		* 获取： 班级名称
		*/
		public String getBanjiName() {
			return banjiName;
		}
		/**
		* 设置： 班级名称
		*/
		public void setBanjiName(String banjiName) {
			this.banjiName = banjiName;
		}

		/**
		* 获取： 班级位置
		*/
		public String getBanjiAddress() {
			return banjiAddress;
		}
		/**
		* 设置： 班级位置
		*/
		public void setBanjiAddress(String banjiAddress) {
			this.banjiAddress = banjiAddress;
		}

		/**
		* 获取： 班级备注
		*/
		public String getBanjiContent() {
			return banjiContent;
		}
		/**
		* 设置： 班级备注
		*/
		public void setBanjiContent(String banjiContent) {
			this.banjiContent = banjiContent;
		}
	//级联表的get和set 老师

		/**
		* 获取： 老师姓名
		*/
		public String getLaoshiName() {
			return laoshiName;
		}
		/**
		* 设置： 老师姓名
		*/
		public void setLaoshiName(String laoshiName) {
			this.laoshiName = laoshiName;
		}

		/**
		* 获取： 老师手机号
		*/
		public String getLaoshiPhone() {
			return laoshiPhone;
		}
		/**
		* 设置： 老师手机号
		*/
		public void setLaoshiPhone(String laoshiPhone) {
			this.laoshiPhone = laoshiPhone;
		}

		/**
		* 获取： 老师身份证号
		*/
		public String getLaoshiIdNumber() {
			return laoshiIdNumber;
		}
		/**
		* 设置： 老师身份证号
		*/
		public void setLaoshiIdNumber(String laoshiIdNumber) {
			this.laoshiIdNumber = laoshiIdNumber;
		}

		/**
		* 获取： 老师头像
		*/
		public String getLaoshiPhoto() {
			return laoshiPhoto;
		}
		/**
		* 设置： 老师头像
		*/
		public void setLaoshiPhoto(String laoshiPhoto) {
			this.laoshiPhoto = laoshiPhoto;
		}

		/**
		* 获取： 老师邮箱
		*/
		public String getLaoshiEmail() {
			return laoshiEmail;
		}
		/**
		* 设置： 老师邮箱
		*/
		public void setLaoshiEmail(String laoshiEmail) {
			this.laoshiEmail = laoshiEmail;
		}
	//级联表的get和set 学生

		/**
		* 获取： 学生姓名
		*/
		public String getYonghuName() {
			return yonghuName;
		}
		/**
		* 设置： 学生姓名
		*/
		public void setYonghuName(String yonghuName) {
			this.yonghuName = yonghuName;
		}

		/**
		* 获取： 学生手机号
		*/
		public String getYonghuPhone() {
			return yonghuPhone;
		}
		/**
		* 设置： 学生手机号
		*/
		public void setYonghuPhone(String yonghuPhone) {
			this.yonghuPhone = yonghuPhone;
		}

		/**
		* 获取： 学生身份证号
		*/
		public String getYonghuIdNumber() {
			return yonghuIdNumber;
		}
		/**
		* 设置： 学生身份证号
		*/
		public void setYonghuIdNumber(String yonghuIdNumber) {
			this.yonghuIdNumber = yonghuIdNumber;
		}

		/**
		* 获取： 学生头像
		*/
		public String getYonghuPhoto() {
			return yonghuPhoto;
		}
		/**
		* 设置： 学生头像
		*/
		public void setYonghuPhoto(String yonghuPhoto) {
			this.yonghuPhoto = yonghuPhoto;
		}

		/**
		* 获取： 学生邮箱
		*/
		public String getYonghuEmail() {
			return yonghuEmail;
		}
		/**
		* 设置： 学生邮箱
		*/
		public void setYonghuEmail(String yonghuEmail) {
			this.yonghuEmail = yonghuEmail;
		}

		/**
		* 获取： 余额
		*/
		public Double getNewMoney() {
			return newMoney;
		}
		/**
		* 设置： 余额
		*/
		public void setNewMoney(Double newMoney) {
			this.newMoney = newMoney;
		}

	//重复字段
			/**
			* 获取： 重复字段 的types
			*/
			public Integer getSexTypes() {
			return sexTypes;
			}
			/**
			* 设置： 重复字段 的types
			*/
			public void setSexTypes(Integer sexTypes) {
			this.sexTypes = sexTypes;
			}
				public String getSexValue() {
				return sexValue;
				}
				public void setSexValue(String sexValue) {
				this.sexValue = sexValue;
				}

	@Override
	public String toString() {
		return "FeiyongView{" +
			", feiyongValue=" + feiyongValue +
			", feiyongZhuangtaiValue=" + feiyongZhuangtaiValue +
			", yonghuName=" + yonghuName +
			", yonghuPhone=" + yonghuPhone +
			", yonghuIdNumber=" + yonghuIdNumber +
			", yonghuPhoto=" + yonghuPhoto +
			", yonghuEmail=" + yonghuEmail +
			", newMoney=" + newMoney +
			", laoshiName=" + laoshiName +
			", laoshiPhone=" + laoshiPhone +
			", laoshiIdNumber=" + laoshiIdNumber +
			", laoshiPhoto=" + laoshiPhoto +
			", laoshiEmail=" + laoshiEmail +
			", banjiUuidNumber=" + banjiUuidNumber +
			", banjiName=" + banjiName +
			", banjiAddress=" + banjiAddress +
			", banjiContent=" + banjiContent +
			"} " + super.toString();
	}
}
