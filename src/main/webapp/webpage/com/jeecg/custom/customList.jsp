<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>客户资料</title>
<meta name="viewport" content="width=device-width" />
<t:base type="bootstrap,bootstrap-table,layer"></t:base>
</head>
<body>
  <t:datagrid name="customList"  component="bootstrap-table"  checkbox="true" sortName="createDate"   sortOrder="desc"   pagination="true" fitColumns="true" title="客户资料" actionUrl="customController.do?datagrid" idField="id" fit="true" queryMode="group">
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
   <t:dgCol title="公司类型"  field="ftype"  queryMode="single"  dictionary="company"  width="120"></t:dgCol>
   <t:dgCol title="客户代码"  field="fcode"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="简称"  field="fabbr"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="税号"  field="ftaxno"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="中文名称"  field="fcnname"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="英文名称"  field="fenname"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="财务编码"  field="finance"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="信用等级"  field="fcredit"  queryMode="single"  dictionary="credit"  width="120"></t:dgCol>
   <t:dgCol title="合同期始"  field="fstart"  formatter="yyyy-MM-dd"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="合同期止"  field="fend"  formatter="yyyy-MM-dd"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="项目组"  field="fproject"  queryMode="single"  dictionary="project"  width="120"></t:dgCol>
   <t:dgCol title="国家城市"  field="fcountry"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="地址"  field="faddress"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮编"  field="fzipcode"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系电话"  field="fphone"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="传真"  field="fax"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="关键字"  field="fkey"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="公司网址"  field="fwebsite"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电子邮件"  field="femail"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="开票税率"  field="ftaxrate"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="附加说明"  field="fnote"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="customController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="customController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="customController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="customController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="customController.do?goUpdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  <script type="text/javascript">
	 $(document).ready(function(){
	 });
	 
	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'customController.do?upload', "customList");
	}
	
	//导出
	function ExportXls() {
		JeecgExcelExport("customController.do?exportXls","customList");
	}
	
	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("customController.do?exportXlsByT","customList");
	}
	
	 </script>
</body>
</html>