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
</head>
<body>
<div class="container" style="width:100%;overflow-x:hidden">
<div class="panel panel-default">
<div class="panel-heading"></div>
<div class="panel-body">
<form class="form-horizontal" role="form" id="formobj" action="doorPointController.do?doAdd" method="POST">
	<input type="hidden" id="btn_sub" class="btn_sub"/>
	<input type="hidden" id="id" name="id"/>
	<fieldset>
		<legend>门点</legend>
		<div class="main-form">
			<div class="row">
				<%--<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							门点代码：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fcode"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>--%>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							项目组：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
			            	<t:dictSelect field="fproject"  type="select" hasLabel="false" title="项目组" extendJson="{class:'form-control input-sm'}"   typeGroupCode="project" ></t:dictSelect>
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							门点名称：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
				<div class="bt-item col-md-6 col-sm-6">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							装送货单位：
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 bt-content">
							<input name="fzxunit"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
		            	</div>
					</div>
				</div>
                <div class="bt-item col-md-6 col-sm-6">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 bt-label">
                            附加说明：
                        </div>
                        <div class="col-md-8 col-sm-8 col-xs-8 bt-content">
                            <textarea id="fnote" name="fnote" class="form-control input-sm" rows="6"  ignore="ignore" ></textarea>
                        </div>
                    </div>
                </div>
			</div>
		</div>
	</fieldset>

	<ul class="nav nav-tabs" style="margin-bottom:0" id="subTabs">
		<li class="active"><a href="#dpcontact" data-toggle="tab">门点联系人</a></li>  
	</ul>
	<div class="tab-content" style="background-color:#fff;padding-top:10px;">
		<div class="tab-pane fade in active" id="dpcontact">  
			<div class="form-tb-toolbar">
				<button onclick="addOneRow('dpcontact_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span>&nbsp;添加</button>
				<button onclick="deleteSelectRows('dpcontact_table')" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-minus"></span>&nbsp;删除</button>
			</div>
	   		<div style="overflow-x:auto">
	   		<table class="table subinfo-table" id="dpcontact_table">
		   		<thead>
		   		<tr>
		   			<th align="center" style="width:25px;"></th>
					<th>联系人名</th>
					<th>默认</th>
					<th>性别</th>
					<th>电话</th>
					<th>手机</th>
					<th>传真</th>
				</thead>
				<tbody>
			  	<tr>
			  		<td class="form-ck"><input type="checkbox" name="ck"/></td>
					<td>
							<input name="dpcontactList[0].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
					</td>
					<td>
			            	<t:dictSelect field="dpcontactList[0].fdefault"  type="select" hasLabel="false" title="默认" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sf_yn" ></t:dictSelect>
					</td>
					<td>
			            	<t:dictSelect field="dpcontactList[0].fsex"  type="select" hasLabel="false" title="性别" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sex" ></t:dictSelect>
					</td>
					<td>
							<input name="dpcontactList[0].fphone"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
					</td>
					<td>
							<input name="dpcontactList[0].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  />
					</td>
					<td>
							<input name="dpcontactList[0].fax"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
					</td>
			  	</tr>
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
	<tbody id="dpcontact_table_template">
		<tr>
			<td class="form-ck"><input type="checkbox" name="ck"/></td>
			<td>
							<input name="dpcontactList[#index#].fname"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
			</td>
			<td>
			            	<t:dictSelect field="dpcontactList[#index#].fdefault"  type="select" hasLabel="false" title="默认" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sf_yn" ></t:dictSelect>
			</td>
			<td>
			            	<t:dictSelect field="dpcontactList[#index#].fsex"  type="select" hasLabel="false" title="性别" extendJson="{class:'form-control input-sm'}"   typeGroupCode="sex" ></t:dictSelect>
			</td>
			<td>
							<input name="dpcontactList[#index#].fphone"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
			</td>
			<td>
							<input name="dpcontactList[#index#].fmobile"  type="text" class="form-control input-sm" maxlength="32"  datatype="m" ignore="ignore"  />
			</td>
			<td>
							<input name="dpcontactList[#index#].fax"  type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
			</td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
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
});
function formControlInit(){
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
					$this.attr("name",name.replace(new_name,i));
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
				    var s = onclick_str.indexOf("[");
					var e = onclick_str.indexOf("]");
					var new_onclick_str = onclick_str.substring(s+1,e);
					$this.attr("onclick",onclick_str.replace(new_onclick_str,i));
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