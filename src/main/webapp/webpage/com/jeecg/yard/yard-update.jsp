<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>堆场码头</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="yardController.do?doUpdate" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id" value="${yard.id}"/>
	<div class="form-group">
		<label for="ftype" class="col-sm-3 control-label">类型：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
               <t:dictSelect id="ftype" field="ftype" type="list" extendJson="{class:'form-control input-sm'}"   typeGroupCode="ytype"  hasLabel="false"  title="类型" defaultVal="${yard.ftype}"></t:dictSelect>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="fyardcode" class="col-sm-3 control-label">堆场代码：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<input id="fyardcode" name="fyardcode" value='${yard.fyardcode}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入堆场代码"  ignore="ignore" readonly/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="fyardname" class="col-sm-3 control-label">堆场名称：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<input id="fyardname" name="fyardname" value='${yard.fyardname}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入堆场名称"  ignore="ignore" />
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="fportcode" class="col-sm-3 control-label">港口代码：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<input id="fportcode" name="fportcode" value='${yard.fportcode}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入港口代码"  ignore="ignore" />
                <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                    </ul>
                </div>
            </div>
		</div>
	</div>
    <div class="form-group">
        <label for="finstruction" class="col-sm-3 control-label">附加说明：</label>
        <div class="col-sm-7">
            <div class="input-group" style="width:100%">
                <textarea id="finstruction" name="finstruction" class="form-control input-sm" rows="6"  ignore="ignore" >${yard.finstruction}</textarea>
                <span class="Validform_checktip" style="float:left;height:0px;"></span>
                <label class="Validform_label" style="display: none">附加说明</label>
            </div>
        </div>
    </div>
	</form>
	</div>
 </div>
 <script src="plug-in/hplus/plugins/suggest/bootstrap-suggest.min.js"></script>
<script type="text/javascript">
var subDlgIndex = '';
$(document).ready(function() {
	//单选框/多选框初始化
	$('.i-checks').iCheck({
		labelHover : false,
		cursor : true,
		checkboxClass : 'icheckbox_square-green',
		radioClass : 'iradio_square-green',
		increaseArea : '20%'
	});
	
	//表单提交
	$("#formobj").Validform({
		tiptype:function(msg,o,cssctl){
			if(o.type==3){
				validationMessage(o.obj,msg);
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

$("#fportcode").bsSuggest({
    url:"portController/port.do?keyword=",
    showBtn:false,
    idField:"id",
    keyField:"fportcode",
    effectiveFields:["fportname","fportcode","fbelong","fporttype"],
    effectiveFieldsAlias:{fportname:'名称',fportcode:'代码',fbelong:'所属',fporttype:'类型'}
}).on('onDataRequestSuccess',function(e,result){
    console.log('onDataRequestSuccess:',result);
}).on('onSetSelectValue',function(e,keyword){
    console.log('onSetSelectValue:',keyword);
}).on('onUnsetSelectValue',function(e){
    console.log("onUnsetSelectValue");

});
</script>
</body>
</html>