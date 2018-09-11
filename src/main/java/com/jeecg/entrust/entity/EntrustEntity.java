package com.jeecg.entrust.entity;

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
 * @Description: 客户委托
 * @author onlineGenerator
 * @date 2018-09-11 16:18:10
 * @version V1.0   
 *
 */
@Entity
@Table(name = "z_entrust", schema = "")
@SuppressWarnings("serial")
public class EntrustEntity implements java.io.Serializable {
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
	/**委托单号*/
	@Excel(name="委托单号",width=15)
	private java.lang.String fbillno;
	/**委托单位id*/
	@Excel(name="委托单位id",width=15)
	private java.lang.String funitid;
	/**委托单位*/
	@Excel(name="委托单位",width=15)
	private java.lang.String funit;
	/**操作日期*/
	@Excel(name="操作日期",width=15,format = "yyyy-MM-dd HH:mm:ss")
	private java.util.Date ftime;
	/**联系人*/
	@Excel(name="联系人",width=15)
	private java.lang.String fcontact;
	/**联系电话*/
	@Excel(name="联系电话",width=15)
	private java.lang.String fphone;
	/**手机号*/
	@Excel(name="手机号",width=15)
	private java.lang.String fmobile;
	/**传真*/
	@Excel(name="传真",width=15)
	private java.lang.String fax;
	/**业务员id*/
	@Excel(name="业务员id",width=15)
	private java.lang.String fsalesid;
	/**业务员*/
	@Excel(name="业务员",width=15)
	private java.lang.String fsalesman;
	/**做箱类型*/
	@Excel(name="做箱类型",width=15,dicCode="dobox")
	private java.lang.String fdobox;
	/**业务类型*/
	@Excel(name="业务类型",width=15,dicCode="buss")
	private java.lang.String fbuss;
	/**装船港*/
	@Excel(name="装船港",width=15)
	private java.lang.String fload;
	/**合同号*/
	@Excel(name="合同号",width=15)
	private java.lang.String fhetong;
	/**运输方式*/
	@Excel(name="运输方式",width=15,dicCode="trans")
	private java.lang.String ftrans;
	/**客户编号*/
	@Excel(name="客户编号",width=15)
	private java.lang.String fcusno;
	/**中转港*/
	@Excel(name="中转港",width=15)
	private java.lang.String ftransfer;
	/**船名*/
	@Excel(name="船名",width=15)
	private java.lang.String fship;
	/**航次*/
	@Excel(name="航次",width=15)
	private java.lang.String fvoyage;
	/**提单号*/
	@Excel(name="提单号",width=15)
	private java.lang.String ftidan;
	/**目的港*/
	@Excel(name="目的港",width=15)
	private java.lang.String ftarget;
	/**备注*/
	@Excel(name="备注",width=15)
	private java.lang.String fnote;
	/**多选框*/
	@Excel(name="多选框",width=15,dicCode="fstyle")
	private java.lang.String fstyle;
	/**船公司*/
	@Excel(name="船公司",width=15)
	private java.lang.String fshipcom;
	/**放箱公司*/
	@Excel(name="放箱公司",width=15)
	private java.lang.String fangxiang;
	/**作业时间*/
	@Excel(name="作业时间",width=15,format = "yyyy-MM-dd HH:mm:ss")
	private java.util.Date fzuoye;
	/**到港时间*/
	@Excel(name="到港时间",width=15,format = "yyyy-MM-dd HH:mm:ss")
	private java.util.Date farrive;
	/**截港时间*/
	@Excel(name="截港时间",width=15,format = "yyyy-MM-dd HH:mm:ss")
	private java.util.Date fcut;
	/**货物属性*/
	@Excel(name="货物属性",width=15,dicCode="goods")
	private java.lang.String fgoods;
	/**转关地址*/
	@Excel(name="转关地址",width=15)
	private java.lang.String ftransit;
	/**转关联系人*/
	@Excel(name="转关联系人",width=15)
	private java.lang.String ftransname;
	/**联系电话*/
	@Excel(name="联系电话",width=15)
	private java.lang.String ftransmobile;
	/**联合国编号*/
	@Excel(name="联合国编号",width=15)
	private java.lang.String fun;
	/**闪点*/
	@Excel(name="闪点",width=15)
	private java.lang.String flash;
	/**冷藏温度*/
	@Excel(name="冷藏温度",width=15)
	private java.lang.String fcold;
	/**加热温度*/
	@Excel(name="加热温度",width=15)
	private java.lang.String fhot;
	/**危规页码*/
	@Excel(name="危规页码",width=15)
	private java.lang.String fwei;
	/**等级*/
	@Excel(name="等级",width=15)
	private java.lang.String fgrade;
	/**集装箱经营人*/
	@Excel(name="集装箱经营人",width=15)
	private java.lang.String foperator;
	
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
	 *@return: java.lang.String  委托单号
	 */

	@Column(name ="FBILLNO",nullable=true,length=32)
	public java.lang.String getFbillno(){
		return this.fbillno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  委托单号
	 */
	public void setFbillno(java.lang.String fbillno){
		this.fbillno = fbillno;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  委托单位id
	 */

	@Column(name ="FUNITID",nullable=true,length=32)
	public java.lang.String getFunitid(){
		return this.funitid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  委托单位id
	 */
	public void setFunitid(java.lang.String funitid){
		this.funitid = funitid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  委托单位
	 */

	@Column(name ="FUNIT",nullable=true,length=32)
	public java.lang.String getFunit(){
		return this.funit;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  委托单位
	 */
	public void setFunit(java.lang.String funit){
		this.funit = funit;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  操作日期
	 */

	@Column(name ="FTIME",nullable=true,length=32)
	public java.util.Date getFtime(){
		return this.ftime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  操作日期
	 */
	public void setFtime(java.util.Date ftime){
		this.ftime = ftime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系人
	 */

	@Column(name ="FCONTACT",nullable=true,length=32)
	public java.lang.String getFcontact(){
		return this.fcontact;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联系人
	 */
	public void setFcontact(java.lang.String fcontact){
		this.fcontact = fcontact;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系电话
	 */

	@Column(name ="FPHONE",nullable=true,length=32)
	public java.lang.String getFphone(){
		return this.fphone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联系电话
	 */
	public void setFphone(java.lang.String fphone){
		this.fphone = fphone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  手机号
	 */

	@Column(name ="FMOBILE",nullable=true,length=32)
	public java.lang.String getFmobile(){
		return this.fmobile;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  手机号
	 */
	public void setFmobile(java.lang.String fmobile){
		this.fmobile = fmobile;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  传真
	 */

	@Column(name ="FAX",nullable=true,length=32)
	public java.lang.String getFax(){
		return this.fax;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  传真
	 */
	public void setFax(java.lang.String fax){
		this.fax = fax;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  业务员id
	 */

	@Column(name ="FSALESID",nullable=true,length=32)
	public java.lang.String getFsalesid(){
		return this.fsalesid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  业务员id
	 */
	public void setFsalesid(java.lang.String fsalesid){
		this.fsalesid = fsalesid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  业务员
	 */

	@Column(name ="FSALESMAN",nullable=true,length=32)
	public java.lang.String getFsalesman(){
		return this.fsalesman;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  业务员
	 */
	public void setFsalesman(java.lang.String fsalesman){
		this.fsalesman = fsalesman;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  做箱类型
	 */

	@Column(name ="FDOBOX",nullable=true,length=32)
	public java.lang.String getFdobox(){
		return this.fdobox;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  做箱类型
	 */
	public void setFdobox(java.lang.String fdobox){
		this.fdobox = fdobox;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  业务类型
	 */

	@Column(name ="FBUSS",nullable=true,length=32)
	public java.lang.String getFbuss(){
		return this.fbuss;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  业务类型
	 */
	public void setFbuss(java.lang.String fbuss){
		this.fbuss = fbuss;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  装船港
	 */

	@Column(name ="FLOAD",nullable=true,length=32)
	public java.lang.String getFload(){
		return this.fload;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  装船港
	 */
	public void setFload(java.lang.String fload){
		this.fload = fload;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  合同号
	 */

	@Column(name ="FHETONG",nullable=true,length=32)
	public java.lang.String getFhetong(){
		return this.fhetong;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  合同号
	 */
	public void setFhetong(java.lang.String fhetong){
		this.fhetong = fhetong;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  运输方式
	 */

	@Column(name ="FTRANS",nullable=true,length=32)
	public java.lang.String getFtrans(){
		return this.ftrans;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  运输方式
	 */
	public void setFtrans(java.lang.String ftrans){
		this.ftrans = ftrans;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  客户编号
	 */

	@Column(name ="FCUSNO",nullable=true,length=32)
	public java.lang.String getFcusno(){
		return this.fcusno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  客户编号
	 */
	public void setFcusno(java.lang.String fcusno){
		this.fcusno = fcusno;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  中转港
	 */

	@Column(name ="FTRANSFER",nullable=true,length=32)
	public java.lang.String getFtransfer(){
		return this.ftransfer;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  中转港
	 */
	public void setFtransfer(java.lang.String ftransfer){
		this.ftransfer = ftransfer;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  船名
	 */

	@Column(name ="FSHIP",nullable=true,length=32)
	public java.lang.String getFship(){
		return this.fship;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  船名
	 */
	public void setFship(java.lang.String fship){
		this.fship = fship;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  航次
	 */

	@Column(name ="FVOYAGE",nullable=true,length=32)
	public java.lang.String getFvoyage(){
		return this.fvoyage;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  航次
	 */
	public void setFvoyage(java.lang.String fvoyage){
		this.fvoyage = fvoyage;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  提单号
	 */

	@Column(name ="FTIDAN",nullable=true,length=32)
	public java.lang.String getFtidan(){
		return this.ftidan;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  提单号
	 */
	public void setFtidan(java.lang.String ftidan){
		this.ftidan = ftidan;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  目的港
	 */

	@Column(name ="FTARGET",nullable=true,length=32)
	public java.lang.String getFtarget(){
		return this.ftarget;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  目的港
	 */
	public void setFtarget(java.lang.String ftarget){
		this.ftarget = ftarget;
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
	 *@return: java.lang.String  多选框
	 */

	@Column(name ="FSTYLE",nullable=true,length=32)
	public java.lang.String getFstyle(){
		return this.fstyle;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  多选框
	 */
	public void setFstyle(java.lang.String fstyle){
		this.fstyle = fstyle;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  船公司
	 */

	@Column(name ="FSHIPCOM",nullable=true,length=32)
	public java.lang.String getFshipcom(){
		return this.fshipcom;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  船公司
	 */
	public void setFshipcom(java.lang.String fshipcom){
		this.fshipcom = fshipcom;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  放箱公司
	 */

	@Column(name ="FANGXIANG",nullable=true,length=32)
	public java.lang.String getFangxiang(){
		return this.fangxiang;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  放箱公司
	 */
	public void setFangxiang(java.lang.String fangxiang){
		this.fangxiang = fangxiang;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  作业时间
	 */

	@Column(name ="FZUOYE",nullable=true,length=32)
	public java.util.Date getFzuoye(){
		return this.fzuoye;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  作业时间
	 */
	public void setFzuoye(java.util.Date fzuoye){
		this.fzuoye = fzuoye;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  到港时间
	 */

	@Column(name ="FARRIVE",nullable=true,length=32)
	public java.util.Date getFarrive(){
		return this.farrive;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  到港时间
	 */
	public void setFarrive(java.util.Date farrive){
		this.farrive = farrive;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  截港时间
	 */

	@Column(name ="FCUT",nullable=true,length=32)
	public java.util.Date getFcut(){
		return this.fcut;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  截港时间
	 */
	public void setFcut(java.util.Date fcut){
		this.fcut = fcut;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  货物属性
	 */

	@Column(name ="FGOODS",nullable=true,length=32)
	public java.lang.String getFgoods(){
		return this.fgoods;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  货物属性
	 */
	public void setFgoods(java.lang.String fgoods){
		this.fgoods = fgoods;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  转关地址
	 */

	@Column(name ="FTRANSIT",nullable=true,length=32)
	public java.lang.String getFtransit(){
		return this.ftransit;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  转关地址
	 */
	public void setFtransit(java.lang.String ftransit){
		this.ftransit = ftransit;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  转关联系人
	 */

	@Column(name ="FTRANSNAME",nullable=true,length=32)
	public java.lang.String getFtransname(){
		return this.ftransname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  转关联系人
	 */
	public void setFtransname(java.lang.String ftransname){
		this.ftransname = ftransname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系电话
	 */

	@Column(name ="FTRANSMOBILE",nullable=true,length=32)
	public java.lang.String getFtransmobile(){
		return this.ftransmobile;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联系电话
	 */
	public void setFtransmobile(java.lang.String ftransmobile){
		this.ftransmobile = ftransmobile;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联合国编号
	 */

	@Column(name ="FUN",nullable=true,length=32)
	public java.lang.String getFun(){
		return this.fun;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联合国编号
	 */
	public void setFun(java.lang.String fun){
		this.fun = fun;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  闪点
	 */

	@Column(name ="FLASH",nullable=true,length=32)
	public java.lang.String getFlash(){
		return this.flash;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  闪点
	 */
	public void setFlash(java.lang.String flash){
		this.flash = flash;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  冷藏温度
	 */

	@Column(name ="FCOLD",nullable=true,length=32)
	public java.lang.String getFcold(){
		return this.fcold;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  冷藏温度
	 */
	public void setFcold(java.lang.String fcold){
		this.fcold = fcold;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  加热温度
	 */

	@Column(name ="FHOT",nullable=true,length=32)
	public java.lang.String getFhot(){
		return this.fhot;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  加热温度
	 */
	public void setFhot(java.lang.String fhot){
		this.fhot = fhot;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  危规页码
	 */

	@Column(name ="FWEI",nullable=true,length=32)
	public java.lang.String getFwei(){
		return this.fwei;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  危规页码
	 */
	public void setFwei(java.lang.String fwei){
		this.fwei = fwei;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  等级
	 */

	@Column(name ="FGRADE",nullable=true,length=32)
	public java.lang.String getFgrade(){
		return this.fgrade;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  等级
	 */
	public void setFgrade(java.lang.String fgrade){
		this.fgrade = fgrade;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  集装箱经营人
	 */

	@Column(name ="FOPERATOR",nullable=true,length=32)
	public java.lang.String getFoperator(){
		return this.foperator;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  集装箱经营人
	 */
	public void setFoperator(java.lang.String foperator){
		this.foperator = foperator;
	}
}