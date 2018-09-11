<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>堆场码头</title>
<meta name="viewport" content="width=device-width" />
<t:base type="bootstrap,bootstrap-table,layer"></t:base>
</head>
<body>
<t:datagrid name="yardList" component="bootstrap-table"  checkbox="true" sortName="createDate"  sortOrder="desc"  pagination="true" fitColumns="true" title="堆场码头" actionUrl="yardController.do?datagrid" idField="id"  fit="true" queryMode="group">
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
   <t:dgCol title="类型"  field="ftype"  queryMode="single"  dictionary="ytype"  width="120" extendParams="styler:fmtype"></t:dgCol>
   <t:dgCol title="堆场代码"  field="fyardcode"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="堆场名称"  field="fyardname"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="港口代码"  field="fportcode"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="附加说明"  field="finstruction"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="yardController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="yardController.do?goAdd" funname="add"  width="768"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="yardController.do?goUpdate" funname="update"  width="768"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="yardController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="yardController.do?goUpdate" funname="detail"  width="768"></t:dgToolBar>
   <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  <script type="text/javascript">
	 $(document).ready(function(){
	 });
	 
	//导入
	function ImportXls() {
		openuploadwin('Excel导入', 'yardController.do?upload', "yardList");
	}
	
	//导出
	function ExportXls() {
		JeecgExcelExport("yardController.do?exportXls","yardList");
	}
	
	//模板下载
	function ExportXlsByT() {
		JeecgExcelExport("yardController.do?exportXlsByT","yardList");
	}

     //列表字段颜色 demo,逻辑判断函数
     function fmtype(value,row,index){
         //可添加更多CSS样式
         var s1 = 'background-color:#ff5151;color:#FFF;';
         var s2 = 'background-color:#53ff53;color:#FFF;';
         var s3 = 'background-color:#21B9BB;';
         if (value =='0') {
             return s1
         }
         if (value =='1') {
             return s2
         }
         return s3
     }
  </script>
</body>
</html>