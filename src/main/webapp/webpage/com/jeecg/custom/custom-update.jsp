<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>主表</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
<script src="${webRoot}/plug-in/lhgDialog/lhgdialog.min.js"></script>
<script src="${webRoot}/plug-in/jquery-plugs/i18n/jquery.i18n.properties.js"></script>
<script src="${webRoot}/plug-in/tools/curdtools.js"></script>
<!-- 省市区provinces三级联动 -->
<script src="plug-in/provinces/js/city-picker.data.js"></script>
<script src="plug-in/provinces/js/city-picker.js"></script>
<script src="plug-in/provinces/js/main.js"></script>
<link href="plug-in/provinces/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="plug-in/provinces/css/city-picker.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="container" style="width:100%;overflow-x:hidden">
<div class="panel panel-default">
<div class="panel-heading"></div>
<div class="panel-body">
<form class="form-horizontal" role="form" id="formobj" action="customController.do?doUpdate" method="POST">
	<input type="hidden" id="btn_sub" class="btn_sub"/>
	<input type="hidden" id="id" name="id" value="${customPage.id}"/>
	<fieldset>
		<legend>客户资料</legend>
		<div class="main-form">
			<div class="row">
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							公司类型：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
			            	<div style="padding-top:5px">
			            	<t:dictSelect field="ftype" defaultVal = "${customPage.ftype}" extendJson="{class:'i-checks'}" type="checkbox" hasLabel="false"  title="公司类型"  typeGroupCode="company" ></t:dictSelect>
			            	</div>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							客户代码：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fcode" value = "${customPage.fcode}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							简称：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fabbr" value = "${customPage.fabbr}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							税号：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="ftaxno" value = "${customPage.ftaxno}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							中文名称：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fcnname" value = "${customPage.fcnname}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							英文名称：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fenname" value = "${customPage.fenname}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							财务编码：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="finance" value = "${customPage.finance}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							信用等级：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
			            	<t:dictSelect field="fcredit" defaultVal = "${customPage.fcredit}" type="select" hasLabel="false" title="信用等级" extendJson="{class:'form-control input-sm'}"   typeGroupCode="credit" ></t:dictSelect>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							合同期始：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
		            		<div class="input-group input-group-sm">
		            			<input name="fstart" type="text" class="form-control input-sm laydate-date" value="<fmt:formatDate pattern='yyyy-MM-dd' type='date' value='${customPage.fstart}'/>"  ignore="ignore"  />
		            			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		            		</div>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							合同期止：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
		            		<div class="input-group input-group-sm">
		            			<input name="fend" type="text" class="form-control input-sm laydate-date" value="<fmt:formatDate pattern='yyyy-MM-dd' type='date' value='${customPage.fend}'/>"  ignore="ignore"  />
		            			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		            		</div>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							项目组：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
			            	<t:dictSelect field="fproject" defaultVal = "${customPage.fproject}" type="select" hasLabel="false" title="项目组" extendJson="{class:'form-control input-sm'}"   typeGroupCode="project" ></t:dictSelect>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							国家城市：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<%--<input name="fcountry" value = "${customPage.fcountry}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />--%>
                            <input id="fcountry" name="fcountry" style="width: 300px" class="form-control" readonly type="text" value="${customPage.fcountry}" data-toggle="city-picker">
                        </div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							地址：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="faddress" value = "${customPage.faddress}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							邮编：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fzipcode" value = "${customPage.fzipcode}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							联系电话：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fphone" value = "${customPage.fphone}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							传真：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fax" value = "${customPage.fax}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							关键字：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fkey" value = "${customPage.fkey}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							公司网址：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fwebsite" value = "${customPage.fwebsite}" type="text" class="form-control input-sm" maxlength="32"  datatype="url" ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							电子邮件：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="femail" value = "${customPage.femail}" type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							开票税率：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="ftaxrate" value = "${customPage.ftaxrate}" type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<ul class="nav nav-tabs" style="margin-bottom:0" id="subTabs">
		<li class="active"><a href="#cusContact" data-toggle="tab">联系人</a></li>  
		<li><a href="#cusSales" data-toggle="tab">业务员</a></li>  
		<li><a href="#cusCombination" data-toggle="tab">费用组合</a></li>  
	</ul>
	<div class="tab-content" style="background-color:#fff;padding-top:10px;">
		<div class="tab-pane fade in active" id="cusContact">  
			<div class="form-tb-toolbar">
				<button onclick="addOneRow('cusContact_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span>&nbsp;添加</button>
				<button onclick="deleteSelectRows('cusContact_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-minus"></span>&nbsp;删除</button>
			</div>
	   		<div style="overflow-x:auto">
	   		<table class="table subinfo-table" id="cusContact_table">
		   		<thead>
		   		<tr>
		   			<th align="center" style="width:25px;"></th>
					<th>姓名</th>
					<th>性别</th>
					<th>电话</th>
					<th>手机</th>
					<th>传真</th>
					<th>邮箱</th>
					<th>职位</th>
					<th>备注</th>
				</thead>
				<tbody>
				<c:if test="${fn:length(customPage.cusContactList)  > 0 }">
				<c:forEach items="${customPage.cusContactList}" var="poVal" varStatus="stuts">
				<tr>
			  		<td class="form-ck"><input style="" type="checkbox" name="ck"/><input name = "cusContactList[${stuts.index }].id" value= "${poVal.id}" type="hidden"/></td>
					<td><input name="cusContactList[${stuts.index }].fname" value = "${poVal.fname}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><t:dictSelect field="cusContactList[${stuts.index }].fsex" defaultVal = "${poVal.fsex}" type="select" hasLabel="false" title="性别" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sex" ></t:dictSelect></td>
					<td><input name="cusContactList[${stuts.index }].fphone" value = "${poVal.fphone}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><input name="cusContactList[${stuts.index }].fmobile" value = "${poVal.fmobile}" type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
					<td><input name="cusContactList[${stuts.index }].fax" value = "${poVal.fax}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><input name="cusContactList[${stuts.index }].femail" value = "${poVal.femail}" type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
					<td><t:dictSelect field="cusContactList[${stuts.index }].fposition" defaultVal = "${poVal.fposition}" type="select" hasLabel="false" title="职位" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
					<td><input name="cusContactList[${stuts.index }].fnote" value = "${poVal.fnote}" type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:forEach>
				</c:if>
				<c:if test="${fn:length(customPage.cusContactList) <= 0 }">
				<tr>
			  		<td class="form-ck"><input type="checkbox" name="ck"/></td>
					<td><input name="cusContactList[0].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><t:dictSelect field="cusContactList[0].fsex"  type="select" hasLabel="false" title="性别" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sex" ></t:dictSelect></td>
					<td><input name="cusContactList[0].fphone"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><input name="cusContactList[0].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
					<td><input name="cusContactList[0].fax"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><input name="cusContactList[0].femail"  type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
					<td><t:dictSelect field="cusContactList[0].fposition"  type="select" hasLabel="false" title="职位" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
					<td><input name="cusContactList[0].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:if>
			 	</tbody>
			</table>
			</div>
		</div>
		<div class="tab-pane fade" id="cusSales">  
			<div class="form-tb-toolbar">
				<button onclick="addOneRow('cusSales_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span>&nbsp;添加</button>
				<button onclick="deleteSelectRows('cusSales_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-minus"></span>&nbsp;删除</button>
			</div>
	   		<div style="overflow-x:auto">
	   		<table class="table subinfo-table" id="cusSales_table">
		   		<thead>
		   		<tr>
		   			<th align="center" style="width:25px;"></th>
					<th>姓名</th>
					<th>职务</th>
					<th>手机号</th>
					<th>电子邮件</th>
					<th>提成</th>
					<th>备注</th>
				</thead>
				<tbody>
				<c:if test="${fn:length(customPage.cusSalesList)  > 0 }">
				<c:forEach items="${customPage.cusSalesList}" var="poVal" varStatus="stuts">
				<tr>
			  		<td class="form-ck"><input style="" type="checkbox" name="ck"/><input name = "cusSalesList[${stuts.index }].id" value= "${poVal.id}" type="hidden"/></td>
					<td><input name="cusSalesList[${stuts.index }].fname" value = "${poVal.fname}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><t:dictSelect field="cusSalesList[${stuts.index }].fposition" defaultVal = "${poVal.fposition}" type="select" hasLabel="false" title="职务" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
					<td><input name="cusSalesList[${stuts.index }].fmobile" value = "${poVal.fmobile}" type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
					<td><input name="cusSalesList[${stuts.index }].femail" value = "${poVal.femail}" type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
					<td><input name="cusSalesList[${stuts.index }].fcommission" value = "${poVal.fcommission}" type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusSalesList[${stuts.index }].fnote" value = "${poVal.fnote}" type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:forEach>
				</c:if>
				<c:if test="${fn:length(customPage.cusSalesList) <= 0 }">
				<tr>
			  		<td class="form-ck"><input type="checkbox" name="ck"/></td>
					<td><input name="cusSalesList[0].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
					<td><t:dictSelect field="cusSalesList[0].fposition"  type="select" hasLabel="false" title="职务" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
					<td><input name="cusSalesList[0].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
					<td><input name="cusSalesList[0].femail"  type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
					<td><input name="cusSalesList[0].fcommission"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusSalesList[0].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:if>
			 	</tbody>
			</table>
			</div>
		</div>
		<div class="tab-pane fade" id="cusCombination">  
			<div class="form-tb-toolbar">
				<button onclick="addOneRow('cusCombination_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span>&nbsp;添加</button>
				<button onclick="deleteSelectRows('cusCombination_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-minus"></span>&nbsp;删除</button>
			</div>
	   		<div style="overflow-x:auto">
	   		<table class="table subinfo-table" id="cusCombination_table">
		   		<thead>
		   		<tr>
		   			<th align="center" style="width:25px;"></th>
					<th>提箱堆场</th>
					<th>进口码头</th>
					<th>装货门点</th>
					<th>卸货门点</th>
					<th>出口码头</th>
					<th>还箱堆场</th>
					<th>费用</th>
					<th>含税费用</th>
					<th>税率</th>
					<th>开始时间</th>
					<th>备注</th>
				</thead>
				<tbody>
				<c:if test="${fn:length(customPage.cusCombinationList)  > 0 }">
				<c:forEach items="${customPage.cusCombinationList}" var="poVal" varStatus="stuts">
				<tr>
			  		<td class="form-ck"><input style="" type="checkbox" name="ck"/><input name = "cusCombinationList[${stuts.index }].id" value= "${poVal.id}" type="hidden"/></td>
					<td><input name="cusCombinationList[${stuts.index }].ftxyard"  onclick="popupClick(this,'fyardname,id','ftxyard,ftxid','yard')" value = "${poVal.ftxyard}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].ftxid" value="${poVal.ftxid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fimport"  onclick="popupClick(this,'fyardname,id','fimport,fimportid','quay')" value = "${poVal.fimport}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].fimportid" value="${poVal.fimportid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fzhdp"  onclick="popupClick(this,'fname,id','fzhdp,fzhdpid','dp')" value = "${poVal.fzhdp}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].fzhdpid" value="${poVal.fzhdpid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fxhdp"  onclick="popupClick(this,'fname,id','fxhdp,fxhdpid','dp')" value = "${poVal.fxhdp}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].fxhdpid" value="${poVal.fxhdpid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fexport"  onclick="popupClick(this,'fyardname,id','fexport,fexportid','quay')" value = "${poVal.fexport}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].fexportid" value="${poVal.fexportid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fhxyard"  onclick="popupClick(this,'fyardname,id','fhxyard,fhxid','yard')" value = "${poVal.fhxyard}" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[${stuts.index }].fhxid" value="${poVal.fhxid}" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[${stuts.index }].fcost" value = "${poVal.fcost}" type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[${stuts.index }].ftaxcost" value = "${poVal.ftaxcost}" type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[${stuts.index }].ftax" value = "${poVal.ftax}" type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[${stuts.index }].fstart" type="text" class="form-control input-sm laydate-date" value="<fmt:formatDate pattern='yyyy-MM-dd' type='date' value='${poVal.fstart}'/>"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[${stuts.index }].fnote" value = "${poVal.fnote}" type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:forEach>
				</c:if>
				<c:if test="${fn:length(customPage.cusCombinationList) <= 0 }">
				<tr>
			  		<td class="form-ck"><input type="checkbox" name="ck"/></td>
					<td><input name="cusCombinationList[0].ftxyard"  onclick="popupClick(this,'fyardname,id','ftxyard,ftxid','yard')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].ftxid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fimport"  onclick="popupClick(this,'fyardname,id','fimport,fimportid','quay')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].fimportid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fzhdp"  onclick="popupClick(this,'fname,id','fzhdp,fzhdpid','dp')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].fzhdpid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fxhdp"  onclick="popupClick(this,'fname,id','fxhdp,fxhdpid','dp')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].fxhdpid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fexport"  onclick="popupClick(this,'fyardname,id','fexport,fexportid','quay')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].fexportid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fhxyard"  onclick="popupClick(this,'fyardname,id','fhxyard,fhxid','yard')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                        <input name="cusCombinationList[0].fhxid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
					<td><input name="cusCombinationList[0].fcost"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[0].ftaxcost"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[0].ftax"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[0].fstart" type="text" class="form-control input-sm laydate-date" value="<fmt:formatDate pattern='yyyy-MM-dd' type='date' value='${fstart}'/>"  ignore="ignore"  /></td>
					<td><input name="cusCombinationList[0].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
			  	</tr>
				</c:if>
			 	</tbody>
			</table>
			</div>
		</div>
	</div>
</form>
</div>
</div>
</div>
<table style="display:none">
	<tbody id="cusContact_table_template">
		<tr>
			<td class="form-ck"><input type="checkbox" name="ck"/></td>
			<td><input name="cusContactList[#index#].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
			<td><t:dictSelect field="cusContactList[#index#].fsex"  type="select" hasLabel="false" title="性别" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sex" ></t:dictSelect></td>
			<td><input name="cusContactList[#index#].fphone"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
			<td><input name="cusContactList[#index#].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
			<td><input name="cusContactList[#index#].fax"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
			<td><input name="cusContactList[#index#].femail"  type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
			<td><t:dictSelect field="cusContactList[#index#].fposition"  type="select" hasLabel="false" title="职位" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
			<td><input name="cusContactList[#index#].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
		</tr>
	</tbody>
	<tbody id="cusSales_table_template">
		<tr>
			<td class="form-ck"><input type="checkbox" name="ck"/></td>
			<td><input name="cusSalesList[#index#].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  /></td>
			<td><t:dictSelect field="cusSalesList[#index#].fposition"  type="select" hasLabel="false" title="职务" extendJson="{class:'form-control input-sm'}"   typeGroupCode="position" ></t:dictSelect></td>
			<td><input name="cusSalesList[#index#].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  /></td>
			<td><input name="cusSalesList[#index#].femail"  type="text" class="form-control input-sm" maxlength="32"  datatype="e" ignore="ignore"  /></td>
			<td><input name="cusSalesList[#index#].fcommission"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
			<td><input name="cusSalesList[#index#].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
		</tr>
	</tbody>
	<tbody id="cusCombination_table_template">
		<tr>
			<td class="form-ck"><input type="checkbox" name="ck"/></td>
			<td><input name="cusCombinationList[#index#].ftxyard"  onclick="popupClick(this,'fyardname,id','ftxyard,ftxid','yard')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].ftxid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fimport"  onclick="popupClick(this,'fyardname,id','fimport,fimportid','quay')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].fimportid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fzhdp"  onclick="popupClick(this,'fname,id','fzhdp,fzhdpid','dp')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].fzhdpid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fxhdp"  onclick="popupClick(this,'fname,id','fxhdp,fxhdpid','dp')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].fxhdpid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fexport"  onclick="popupClick(this,'fyardname,id','fexport,fexportid','quay')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].fexportid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fhxyard"  onclick="popupClick(this,'fyardname,id','fhxyard,fhxid','yard')"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
                <input name="cusCombinationList[#index#].fhxid" maxlength="32" type="text" class="inputxt"  style="width:120px;display: none"  ignore="ignore" /></td>
			<td><input name="cusCombinationList[#index#].fcost"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
			<td><input name="cusCombinationList[#index#].ftaxcost"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
			<td><input name="cusCombinationList[#index#].ftax"  type="text" class="form-control input-sm" maxlength="32"  datatype="/^(-?\d+)(\.\d+)?$/"  ignore="ignore"  /></td>
			<td><input name="cusCombinationList[#index#].fstart" type="text" class="form-control input-sm laydate-date" value="<fmt:formatDate pattern='yyyy-MM-dd' type='date' value='${fstart}'/>"  ignore="ignore"  /></td>
			<td><input name="cusCombinationList[#index#].fnote"  type="text" class="form-control input-sm" maxlength="255"  ignore="ignore"  /></td>
		</tr>
	</tbody>
</table>
<script src="plug-in/jquery/jquery.regionselect.js" type="text/javascript"></script>
<script type="text/javascript">
    //省市区下拉
    $(function() {
        $("#province").regionselect({
            url: '<%=basePath%>/jeecgFormDemoController.do?regionSelect'
        });
    });

$(document).ready(function() {
	formControlInit();
	//表单提交
	$("#formobj").Validform({
		tiptype:function(msg,o,cssctl){
			if(o.type==3){
				var oopanel = $(o.obj).closest(".tab-pane");
				var a = 0;
				if(oopanel.length>0){
					var panelID = oopanel.attr("id");
					if(!!panelID){
						var waitActive = $('#subTabs a[href="#'+panelID+'"]');
						if(!waitActive.hasClass("active")){
							waitActive.tab('show')
							a = 1;
						}
					}
				}
				if(a==1){
					setTimeout(function(){validationMessage(o.obj,msg);},366);
				}else{
					validationMessage(o.obj,msg);
				}
			}else{
				removeMessage(o.obj);
			}
		},
		btnSubmit : "#btn_sub",
		btnReset : "#btn_reset",
		ajaxPost : true,
		beforeSubmit : function(curform) {
		},
		usePlugin : {
			passwordstrength : {
				minLen : 6,
				maxLen : 18,
				trigger : function(obj, error) {
					if (error) {
						obj.parent().next().find(".Validform_checktip").show();
						obj.find(".passwordStrength").hide();
					} else {
						$(".passwordStrength").show();
						obj.parent().next().find(".Validform_checktip").hide();
					}
				}
			}
		},
		callback : function(data) {
			var win = frameElement.api.opener;
			if (data.success == true) {
				frameElement.api.close();
			    win.reloadTable();
			    win.tip(data.msg);
			} else {
			    if (data.responseText == '' || data.responseText == undefined) {
			        $.messager.alert('错误', data.msg);
			        $.Hidemsg();
			    } else {
			        try {
			            var emsg = data.responseText.substring(data.responseText.indexOf('错误描述'), data.responseText.indexOf('错误信息'));
			            $.messager.alert('错误', emsg);
			            $.Hidemsg();
			        } catch (ex) {
			            $.messager.alert('错误', data.responseText + "");
			            $.Hidemsg();
			        }
			    }
			    return false;
			}
		}
	});
	  //查看模式情况下,删除和上传附件功能禁止使用
	if(location.href.indexOf("load=detail")!=-1){
		$(".form-tb-toolbar").hide();
		$("#formobj").find(":input").attr("readonly","readonly");
	}
});
function formControlInit(){
	$(".laydate-datetime").each(function(){
		if($(this).attr("name").indexOf('#index#')<=0){
			var _this = this;
			laydate.render({
			  elem: _this,
			  format: 'yyyy-MM-dd HH:mm:ss',
			  type: 'datetime',
			  ready: function(date){
			  	 $(_this).val(DateJsonFormat(date,this.format));
			  },
			  done:function(){
				  _this.focus();
			  }
			});
		}

	});
	$(".laydate-date").each(function(){
		if($(this).attr("name").indexOf('#index#')<=0){
			var _this = this;
			laydate.render({
			  elem: _this,
			  format: 'yyyy-MM-dd',
			  ready: function(date){
			  	 $(_this).val(DateJsonFormat(date,this.format));
			  },
			  done:function(){
				  _this.focus();
			  }
			});
		}
	});
	//单选框/多选框初始化
	$('.i-checks').iCheck({
		labelHover : false,
		cursor : true,
		checkboxClass : 'icheckbox_square-green',
		radioClass : 'iradio_square-green',
		increaseArea : '20%'
	});
}
//初始化下标
function resetTrNum(tableId) {
	$tbody = $("#"+tableId+"");
	$tbody.find('tbody > tr').each(function(i){
		$(':input, select,button,a', this).each(function(){
			var $this = $(this),validtype_str = $this.attr('validType'), name = $this.attr('name'),id=$this.attr('id'),onclick_str=$this.attr('onclick'), val = $this.val();
			if(name!=null){
				if (name.indexOf("#index#") >= 0){
					$this.attr("name",name.replace('#index#',i));
				}else{
					var s = name.indexOf("[");
					var e = name.indexOf("]");
					var new_name = name.substring(s+1,e);
					$this.attr("name",name.replace("["+new_name+"]","["+i+"]"));
				}
			}
			if(id!=null){
				if (id.indexOf("#index#") >= 0){
					$this.attr("id",id.replace('#index#',i));
				}else{
					var s = id.indexOf("[");
					var e = id.indexOf("]");
					var new_id = id.substring(s+1,e);
					$this.attr("id",id.replace(new_id,i));
				}
			}
			if(onclick_str!=null){
				if (onclick_str.indexOf("#index#") >= 0){
					$this.attr("onclick",onclick_str.replace(/#index#/g,i));
				}else{
				}
			}
			if(validtype_str!=null){
				if(validtype_str.indexOf("#index#") >= 0){
					$this.attr("validType",validtype_str.replace('#index#',i));
				}
			}
			var class_str = $this.attr("class");
			if(!!class_str && class_str.indexOf("i-checks-tpl")>=0){
				$this.attr("class",class_str.replace(/i-checks-tpl/,"i-checks"));
			}
		});
		//$(this).find('div[name=\'xh\']').html(i+1);
	});
}
//新增一行
function addOneRow(tableId){
 	var tr =  $("#"+tableId+"_template tr").clone();
 	 $("#"+tableId).append(tr);
 	 resetTrNum(tableId);
 	 formControlInit();
}
//删除所选行
function deleteSelectRows(tableId){
	$("#"+tableId).find("input[name$='ck']:checked").parent().parent().remove();   
    resetTrNum(tableId); 
}
//通用弹出式文件上传
function onetomanyUpload(inputName){
    $.dialog({
           content: "url:${webRoot}/systemController.do?commonWebUpload",
           lock : true,
           title:"文件上传",
           zIndex:getzIndex(),
           width:700,
           height: 200,
           parent:windowapi,
           cache:false,
	       ok: function(){
	               var iframe = this.iframe.contentWindow;
	               var url = iframe.uploadCallback();
	               $("input[name='"+inputName+"']").val(url);
	               $("input[name='"+inputName+"']").next("a").attr("href","img/server/"+url+"?down=true").html("下载");
	               return true;
	       },
	       cancelVal: '关闭',
	       cancel: function(){
       	   } 
      });
  }
</script>
</body>
</html>