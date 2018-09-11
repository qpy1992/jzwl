<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>港口</title>
<meta name="viewport" content="width=device-width" />
<t:base type="bootstrap,bootstrap-table,layer"></t:base>
</head>
<body>
<t:datagrid name="portList" component="bootstrap-table"  checkbox="true" sortName="createDate"  sortOrder="desc"  pagination="true" fitColumns="true" title="港口" actionUrl="portController.do?datagrid" idField="id"  fit="true" queryMode="group">
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
   <t:dgCol title="港口代码"  field="fportcode"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="国家代码"  field="fcountrycode"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="港口名称"  field="fportname"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="中文名"  field="fcnname"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="所属港口"  field="fbelong"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="数字码"  field="fshuzi"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="海关码"  field="fhaiguan"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="AMS码"  field="fams"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="EDI代码"  field="fedi"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="EDI代码2"  field="fedi2"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="EDI代码3"  field="fedi3"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="附加说明"  field="finstruction"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="港口类型"  field="fporttype"  queryMode="single"  dictionary="port"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="portController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="portController.do?goAdd" funname="add"  width="800" height="500"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="portController.do?goUpdate" funname="update"  width="800" height="500"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="portController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="portController.do?goUpdate" funname="detail"  width="800" height="500"></t:dgToolBar>
   <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  <script type="text/javascript">
	 $(document).ready(function(){
	 });
	 
	   
	 
	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'portController.do?upload', "portList");
	}
	
	//导出
	function ExportXls() {
		JeecgExcelExport("portController.do?exportXls","portList");
	}
	
	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("portController.do?exportXlsByT","portList");
	}
	
	 </script>
</body>
</html>