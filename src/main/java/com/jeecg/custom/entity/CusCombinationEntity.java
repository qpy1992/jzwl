package com.jeecg.custom.entity;
import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 客户资料
 * @author onlineGenerator
 * @date 2018-09-10 15:00:14
 * @version V1.0   
 *
 */
@Entity
@Table(name = "z_cus_combination", schema = "")
@SuppressWarnings("serial")
public class CusCombinationEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建人登录名称*/
	private java.lang.String createBy;
	/**创建日期*/
	private java.util.Date createDate;
	/**更新人名称*/
	private java.lang.String updateName;
	/**更新人登录名称*/
	private java.lang.String updateBy;
	/**更新日期*/
	private java.util.Date updateDate;
	/**所属部门*/
	private java.lang.String sysOrgCode;
	/**所属公司*/
	private java.lang.String sysCompanyCode;
	/**流程状态*/
	private java.lang.String bpmStatus;
	/**提箱堆场*/
	@Excel(name="提箱堆场",width=15)
	private java.lang.String ftxyard;
	/**提箱堆场id*/
	private java.lang.String ftxid;
	/**进口码头*/
	@Excel(name="进口码头",width=15)
	private java.lang.String fimport;
	/**进口码头id*/
	private java.lang.String fimportid;
	/**装货门点*/
	@Excel(name="装货门点",width=15)
	private java.lang.String fzhdp;
	/**装货门点id*/
	private java.lang.String fzhdpid;
	/**卸货门点*/
	@Excel(name="卸货门点",width=15)
	private java.lang.String fxhdp;
	/**卸货门点id*/
	private java.lang.String fxhdpid;
	/**出口码头*/
	@Excel(name="出口码头",width=15)
	private java.lang.String fexport;
	/**出口码头id*/
	private java.lang.String fexportid;
	/**还箱堆场*/
	@Excel(name="还箱堆场",width=15)
	private java.lang.String fhxyard;
	/**还箱堆场id*/
	private java.lang.String fhxid;
	/**费用*/
	@Excel(name="费用",width=15)
	private java.lang.Double fcost;
	/**含税费用*/
	@Excel(name="含税费用",width=15)
	private java.lang.Double ftaxcost;
	/**税率*/
	@Excel(name="税率",width=15)
	private java.lang.Double ftax;
	/**开始时间*/
	@Excel(name="开始时间",width=15,format = "yyyy-MM-dd")
	private java.util.Date fstart;
	/**备注*/
	@Excel(name="备注",width=15)
	private java.lang.String fnote;
	/**主表id*/
	private java.lang.String fid;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */
	
	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */
	
	@Column(name ="CREATE_BY",nullable=true,length=50)
	public java.lang.String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(java.lang.String createBy){
		this.createBy = createBy;
	}
	
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	
	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */
	
	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人登录名称
	 */
	
	@Column(name ="UPDATE_BY",nullable=true,length=50)
	public java.lang.String getUpdateBy(){
		return this.updateBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人登录名称
	 */
	public void setUpdateBy(java.lang.String updateBy){
		this.updateBy = updateBy;
	}
	
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  更新日期
	 */
	
	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  更新日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属部门
	 */
	
	@Column(name ="SYS_ORG_CODE",nullable=true,length=50)
	public java.lang.String getSysOrgCode(){
		return this.sysOrgCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属部门
	 */
	public void setSysOrgCode(java.lang.String sysOrgCode){
		this.sysOrgCode = sysOrgCode;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属公司
	 */
	
	@Column(name ="SYS_COMPANY_CODE",nullable=true,length=50)
	public java.lang.String getSysCompanyCode(){
		return this.sysCompanyCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属公司
	 */
	public void setSysCompanyCode(java.lang.String sysCompanyCode){
		this.sysCompanyCode = sysCompanyCode;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  流程状态
	 */
	
	@Column(name ="BPM_STATUS",nullable=true,length=32)
	public java.lang.String getBpmStatus(){
		return this.bpmStatus;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  流程状态
	 */
	public void setBpmStatus(java.lang.String bpmStatus){
		this.bpmStatus = bpmStatus;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  提箱堆场
	 */
	
	@Column(name ="FTXYARD",nullable=true,length=32)
	public java.lang.String getFtxyard(){
		return this.ftxyard;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  提箱堆场
	 */
	public void setFtxyard(java.lang.String ftxyard){
		this.ftxyard = ftxyard;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  提箱堆场id
	 */
	
	@Column(name ="FTXID",nullable=true,length=32)
	public java.lang.String getFtxid(){
		return this.ftxid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  提箱堆场id
	 */
	public void setFtxid(java.lang.String ftxid){
		this.ftxid = ftxid;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  进口码头
	 */
	
	@Column(name ="FIMPORT",nullable=true,length=32)
	public java.lang.String getFimport(){
		return this.fimport;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  进口码头
	 */
	public void setFimport(java.lang.String fimport){
		this.fimport = fimport;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  进口码头id
	 */
	
	@Column(name ="FIMPORTID",nullable=true,length=32)
	public java.lang.String getFimportid(){
		return this.fimportid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  进口码头id
	 */
	public void setFimportid(java.lang.String fimportid){
		this.fimportid = fimportid;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  装货门点
	 */
	
	@Column(name ="FZHDP",nullable=true,length=32)
	public java.lang.String getFzhdp(){
		return this.fzhdp;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  装货门点
	 */
	public void setFzhdp(java.lang.String fzhdp){
		this.fzhdp = fzhdp;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  装货门点id
	 */
	
	@Column(name ="FZHDPID",nullable=true,length=32)
	public java.lang.String getFzhdpid(){
		return this.fzhdpid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  装货门点id
	 */
	public void setFzhdpid(java.lang.String fzhdpid){
		this.fzhdpid = fzhdpid;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  卸货门点
	 */
	
	@Column(name ="FXHDP",nullable=true,length=32)
	public java.lang.String getFxhdp(){
		return this.fxhdp;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  卸货门点
	 */
	public void setFxhdp(java.lang.String fxhdp){
		this.fxhdp = fxhdp;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  卸货门点id
	 */
	
	@Column(name ="FXHDPID",nullable=true,length=32)
	public java.lang.String getFxhdpid(){
		return this.fxhdpid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  卸货门点id
	 */
	public void setFxhdpid(java.lang.String fxhdpid){
		this.fxhdpid = fxhdpid;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  出口码头
	 */
	
	@Column(name ="FEXPORT",nullable=true,length=32)
	public java.lang.String getFexport(){
		return this.fexport;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  出口码头
	 */
	public void setFexport(java.lang.String fexport){
		this.fexport = fexport;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  出口码头id
	 */
	
	@Column(name ="FEXPORTID",nullable=true,length=32)
	public java.lang.String getFexportid(){
		return this.fexportid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  出口码头id
	 */
	public void setFexportid(java.lang.String fexportid){
		this.fexportid = fexportid;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  还箱堆场
	 */
	
	@Column(name ="FHXYARD",nullable=true,length=32)
	public java.lang.String getFhxyard(){
		return this.fhxyard;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  还箱堆场
	 */
	public void setFhxyard(java.lang.String fhxyard){
		this.fhxyard = fhxyard;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  还箱堆场id
	 */
	
	@Column(name ="FHXID",nullable=true,length=32)
	public java.lang.String getFhxid(){
		return this.fhxid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  还箱堆场id
	 */
	public void setFhxid(java.lang.String fhxid){
		this.fhxid = fhxid;
	}
	
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  费用
	 */
	
	@Column(name ="FCOST",nullable=true,length=32)
	public java.lang.Double getFcost(){
		return this.fcost;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  费用
	 */
	public void setFcost(java.lang.Double fcost){
		this.fcost = fcost;
	}
	
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  含税费用
	 */
	
	@Column(name ="FTAXCOST",nullable=true,length=32)
	public java.lang.Double getFtaxcost(){
		return this.ftaxcost;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  含税费用
	 */
	public void setFtaxcost(java.lang.Double ftaxcost){
		this.ftaxcost = ftaxcost;
	}
	
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  税率
	 */
	
	@Column(name ="FTAX",nullable=true,length=32)
	public java.lang.Double getFtax(){
		return this.ftax;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  税率
	 */
	public void setFtax(java.lang.Double ftax){
		this.ftax = ftax;
	}
	
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  开始时间
	 */
	
	@Column(name ="FSTART",nullable=true,length=32)
	public java.util.Date getFstart(){
		return this.fstart;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  开始时间
	 */
	public void setFstart(java.util.Date fstart){
		this.fstart = fstart;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	
	@Column(name ="FNOTE",nullable=true,length=255)
	public java.lang.String getFnote(){
		return this.fnote;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setFnote(java.lang.String fnote){
		this.fnote = fnote;
	}
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主表id
	 */
	
	@Column(name ="FID",nullable=true,length=32)
	public java.lang.String getFid(){
		return this.fid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主表id
	 */
	public void setFid(java.lang.String fid){
		this.fid = fid;
	}
	
}
