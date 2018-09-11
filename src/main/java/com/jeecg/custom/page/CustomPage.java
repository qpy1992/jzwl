package com.jeecg.custom.page;

import com.jeecg.custom.entity.CusCombinationEntity;
import com.jeecg.custom.entity.CusContactEntity;
import com.jeecg.custom.entity.CusSalesEntity;
import java.util.List;
import java.util.ArrayList;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecgframework.poi.excel.annotation.ExcelCollection;

/**   
 * @Title: Entity
 * @Description: 客户资料
 * @author onlineGenerator
 * @date 2018-09-10 15:00:14
 * @version V1.0   
 *
 */
public class CustomPage implements java.io.Serializable {
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
	/**公司类型*/
    @Excel(name="公司类型")
	private java.lang.String ftype;
	/**客户代码*/
    @Excel(name="客户代码")
	private java.lang.String fcode;
	/**简称*/
    @Excel(name="简称")
	private java.lang.String fabbr;
	/**税号*/
    @Excel(name="税号")
	private java.lang.String ftaxno;
	/**中文名称*/
    @Excel(name="中文名称")
	private java.lang.String fcnname;
	/**英文名称*/
    @Excel(name="英文名称")
	private java.lang.String fenname;
	/**财务编码*/
    @Excel(name="财务编码")
	private java.lang.String finance;
	/**信用等级*/
    @Excel(name="信用等级")
	private java.lang.String fcredit;
	/**合同期始*/
    @Excel(name="合同期始",format = "yyyy-MM-dd")
	private java.util.Date fstart;
	/**合同期止*/
    @Excel(name="合同期止",format = "yyyy-MM-dd")
	private java.util.Date fend;
	/**项目组*/
    @Excel(name="项目组")
	private java.lang.String fproject;
	/**国家城市*/
    @Excel(name="国家城市")
	private java.lang.String fcountry;
	/**地址*/
    @Excel(name="地址")
	private java.lang.String faddress;
	/**邮编*/
    @Excel(name="邮编")
	private java.lang.String fzipcode;
	/**联系电话*/
    @Excel(name="联系电话")
	private java.lang.String fphone;
	/**传真*/
    @Excel(name="传真")
	private java.lang.String fax;
	/**关键字*/
    @Excel(name="关键字")
	private java.lang.String fkey;
	/**公司网址*/
    @Excel(name="公司网址")
	private java.lang.String fwebsite;
	/**电子邮件*/
    @Excel(name="电子邮件")
	private java.lang.String femail;
	/**开票税率*/
    @Excel(name="开票税率")
	private java.lang.Double ftaxrate;
	/**附加说明*/
    @Excel(name="附加说明")
	private java.lang.String fnote;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
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
	 *@return: java.lang.String  公司类型
	 */
	public java.lang.String getFtype(){
		return this.ftype;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  公司类型
	 */
	public void setFtype(java.lang.String ftype){
		this.ftype = ftype;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  客户代码
	 */
	public java.lang.String getFcode(){
		return this.fcode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  客户代码
	 */
	public void setFcode(java.lang.String fcode){
		this.fcode = fcode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  简称
	 */
	public java.lang.String getFabbr(){
		return this.fabbr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  简称
	 */
	public void setFabbr(java.lang.String fabbr){
		this.fabbr = fabbr;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  税号
	 */
	public java.lang.String getFtaxno(){
		return this.ftaxno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  税号
	 */
	public void setFtaxno(java.lang.String ftaxno){
		this.ftaxno = ftaxno;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  中文名称
	 */
	public java.lang.String getFcnname(){
		return this.fcnname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  中文名称
	 */
	public void setFcnname(java.lang.String fcnname){
		this.fcnname = fcnname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  英文名称
	 */
	public java.lang.String getFenname(){
		return this.fenname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  英文名称
	 */
	public void setFenname(java.lang.String fenname){
		this.fenname = fenname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  财务编码
	 */
	public java.lang.String getFinance(){
		return this.finance;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  财务编码
	 */
	public void setFinance(java.lang.String finance){
		this.finance = finance;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  信用等级
	 */
	public java.lang.String getFcredit(){
		return this.fcredit;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  信用等级
	 */
	public void setFcredit(java.lang.String fcredit){
		this.fcredit = fcredit;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  合同期始
	 */
	public java.util.Date getFstart(){
		return this.fstart;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  合同期始
	 */
	public void setFstart(java.util.Date fstart){
		this.fstart = fstart;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  合同期止
	 */
	public java.util.Date getFend(){
		return this.fend;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  合同期止
	 */
	public void setFend(java.util.Date fend){
		this.fend = fend;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  项目组
	 */
	public java.lang.String getFproject(){
		return this.fproject;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  项目组
	 */
	public void setFproject(java.lang.String fproject){
		this.fproject = fproject;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  国家城市
	 */
	public java.lang.String getFcountry(){
		return this.fcountry;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  国家城市
	 */
	public void setFcountry(java.lang.String fcountry){
		this.fcountry = fcountry;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  地址
	 */
	public java.lang.String getFaddress(){
		return this.faddress;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  地址
	 */
	public void setFaddress(java.lang.String faddress){
		this.faddress = faddress;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  邮编
	 */
	public java.lang.String getFzipcode(){
		return this.fzipcode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  邮编
	 */
	public void setFzipcode(java.lang.String fzipcode){
		this.fzipcode = fzipcode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系电话
	 */
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
	 *@return: java.lang.String  传真
	 */
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
	 *@return: java.lang.String  关键字
	 */
	public java.lang.String getFkey(){
		return this.fkey;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  关键字
	 */
	public void setFkey(java.lang.String fkey){
		this.fkey = fkey;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  公司网址
	 */
	public java.lang.String getFwebsite(){
		return this.fwebsite;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  公司网址
	 */
	public void setFwebsite(java.lang.String fwebsite){
		this.fwebsite = fwebsite;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  电子邮件
	 */
	public java.lang.String getFemail(){
		return this.femail;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  电子邮件
	 */
	public void setFemail(java.lang.String femail){
		this.femail = femail;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  开票税率
	 */
	public java.lang.Double getFtaxrate(){
		return this.ftaxrate;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  开票税率
	 */
	public void setFtaxrate(java.lang.Double ftaxrate){
		this.ftaxrate = ftaxrate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  附加说明
	 */
	public java.lang.String getFnote(){
		return this.fnote;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  附加说明
	 */
	public void setFnote(java.lang.String fnote){
		this.fnote = fnote;
	}
	
	/**保存-联系人*/
    @ExcelCollection(name="联系人")
	private List<CusContactEntity> cusContactList = new ArrayList<CusContactEntity>();
	public List<CusContactEntity> getCusContactList() {
		return cusContactList;
	}
	public void setCusContactList(List<CusContactEntity> cusContactList) {
		this.cusContactList = cusContactList;
	}
	/**保存-业务员*/
    @ExcelCollection(name="业务员")
	private List<CusSalesEntity> cusSalesList = new ArrayList<CusSalesEntity>();
	public List<CusSalesEntity> getCusSalesList() {
		return cusSalesList;
	}
	public void setCusSalesList(List<CusSalesEntity> cusSalesList) {
		this.cusSalesList = cusSalesList;
	}
	/**保存-费用组合*/
    @ExcelCollection(name="费用组合")
	private List<CusCombinationEntity> cusCombinationList = new ArrayList<CusCombinationEntity>();
	public List<CusCombinationEntity> getCusCombinationList() {
		return cusCombinationList;
	}
	public void setCusCombinationList(List<CusCombinationEntity> cusCombinationList) {
		this.cusCombinationList = cusCombinationList;
	}
	
}
