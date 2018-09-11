<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>客户委托</title>
<meta name="viewport" content="width=device-width" />
<t:base type="bootstrap,bootstrap-table,layer"></t:base>
</head>
<body>
<t:datagrid name="entrustList" component="bootstrap-table"  checkbox="true" sortName="createDate"  sortOrder="desc"  pagination="true" fitColumns="true" title="客户委托" actionUrl="entrustController.do?datagrid" idField="id"  fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属部门"  field="sysOrgCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属公司"  field="sysCompanyCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="流程状态"  field="bpmStatus"  hidden="true"  queryMode="single"  dictionary="bpm_status"  width="120"></t:dgCol>
   <t:dgCol title="委托单号"  field="fbillno"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="委托单位id"  field="funitid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="委托单位"  field="funit"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作日期"  field="ftime"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系人"  field="fcontact"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系电话"  field="fphone"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="手机号"  field="fmobile"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="传真"  field="fax"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="业务员id"  field="fsalesid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="业务员"  field="fsalesman"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="做箱类型"  field="fdobox"  queryMode="single"  dictionary="dobox"  width="120"></t:dgCol>
   <t:dgCol title="业务类型"  field="fbuss"  queryMode="single"  dictionary="buss"  width="120"></t:dgCol>
   <t:dgCol title="装船港"  field="fload"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="合同号"  field="fhetong"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="运输方式"  field="ftrans"  queryMode="single"  dictionary="trans"  width="120"></t:dgCol>
   <t:dgCol title="客户编号"  field="fcusno"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="中转港"  field="ftransfer"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="船名"  field="fship"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="航次"  field="fvoyage"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="提单号"  field="ftidan"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="目的港"  field="ftarget"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="fnote"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="多选框"  field="fstyle"  hidden="true"  queryMode="single"  dictionary="fstyle"  width="120"></t:dgCol>
   <t:dgCol title="船公司"  field="fshipcom"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="放箱公司"  field="fangxiang"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="作业时间"  field="fzuoye"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="到港时间"  field="farrive"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="截港时间"  field="fcut"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货物属性"  field="fgoods"  hidden="true"  queryMode="single"  dictionary="goods"  width="120"></t:dgCol>
   <t:dgCol title="转关地址"  field="ftransit"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="转关联系人"  field="ftransname"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系电话"  field="ftransmobile"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联合国编号"  field="fun"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="闪点"  field="flash"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="冷藏温度"  field="fcold"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="加热温度"  field="fhot"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="危规页码"  field="fwei"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="等级"  field="fgrade"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="集装箱经营人"  field="foperator"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="entrustController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="entrustController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="entrustController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="entrustController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="entrustController.do?goUpdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  <script type="text/javascript">
	 $(document).ready(function(){
	 });
	 
	   
	 
	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'entrustController.do?upload', "entrustList");
	}
	
	//导出
	function ExportXls() {
		JeecgExcelExport("entrustController.do?exportXls","entrustList");
	}
	
	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("entrustController.do?exportXlsByT","entrustList");
	}
	
	 </script>
</body>
</html>