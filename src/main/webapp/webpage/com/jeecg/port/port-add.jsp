<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>港口</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="portController.do?doAdd" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id"/>
		<div class="row">
		<%--<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					港口代码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fportcode" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>--%>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					国家代码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcountrycode" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					港口名称：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fportname" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					中文名：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcnname" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					所属港口：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fbelong" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					数字码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fshuzi" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					海关码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fhaiguan" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					AMS码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fams" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					EDI代码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fedi" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					EDI代码2：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fedi2" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					EDI代码3：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fedi3" type="text" class="form-control input-sm" maxlength="32"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					港口类型：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<t:dictSelect field="fporttype" type="select" hasLabel="false" title="港口类型" extendJson="{class:'form-control input-sm'}"   typeGroupCode="port" ></t:dictSelect>
				</div>
			</div>
		</div>
        <div class="bt-item col-md-6 col-sm-6">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-3 bt-label">
                    附加说明：
                </div>
                <div class="col-md-9 col-sm-9 col-xs-9 bt-content">
                    <textarea name="finstruction" class="form-control input-sm" rows="6"  ignore="ignore" ></textarea>
                    <span class="Validform_checktip" style="float:left;height:0px;"></span>
                    <label class="Validform_label" style="display: none">附加说明</label>
                </div>
            </div>
		</div>
    </div>
	</form>
	</div>
 </div>
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
</script>
</body>
</html>