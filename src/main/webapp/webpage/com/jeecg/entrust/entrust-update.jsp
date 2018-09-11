<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>客户委托</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="entrustController.do?doUpdate" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id" value="${entrust.id}"/>
		<div class="row">
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					委托单号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fbillno" type="text" class="form-control" maxlength="32" value = "${entrust.fbillno}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					委托单位id：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="funitid" type="text" class="form-control" maxlength="32" value = "${entrust.funitid}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					委托单位：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="funit" type="text" class="form-control" maxlength="32" value = "${entrust.funit}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					操作日期：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftime" type="text" class="form-control" maxlength="32" value = "${entrust.ftime}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					联系人：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcontact" type="text" class="form-control" maxlength="32" value = "${entrust.fcontact}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					联系电话：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fphone" type="text" class="form-control" maxlength="32" value = "${entrust.fphone}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					手机号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fmobile" type="text" class="form-control" maxlength="32" value = "${entrust.fmobile}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					传真：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fax" type="text" class="form-control" maxlength="32" value = "${entrust.fax}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					业务员id：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fsalesid" type="text" class="form-control" maxlength="32" value = "${entrust.fsalesid}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					业务员：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fsalesman" type="text" class="form-control" maxlength="32" value = "${entrust.fsalesman}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					做箱类型：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<t:dictSelect field="fdobox" defaultVal = "${entrust.fdobox}" type="select" hasLabel="false" title="做箱类型" extendJson="{class:'form-control'}"   typeGroupCode="dobox" ></t:dictSelect>
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					业务类型：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<t:dictSelect field="fbuss" defaultVal = "${entrust.fbuss}" type="select" hasLabel="false" title="业务类型" extendJson="{class:'form-control'}"   typeGroupCode="buss" ></t:dictSelect>
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					装船港：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fload" type="text" class="form-control" maxlength="32" value = "${entrust.fload}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					合同号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fhetong" type="text" class="form-control" maxlength="32" value = "${entrust.fhetong}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					运输方式：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<t:dictSelect field="ftrans" defaultVal = "${entrust.ftrans}" type="select" hasLabel="false" title="运输方式" extendJson="{class:'form-control'}"   typeGroupCode="trans" ></t:dictSelect>
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					客户编号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcusno" type="text" class="form-control" maxlength="32" value = "${entrust.fcusno}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					中转港：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftransfer" type="text" class="form-control" maxlength="32" value = "${entrust.ftransfer}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					船名：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fship" type="text" class="form-control" maxlength="32" value = "${entrust.fship}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					航次：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fvoyage" type="text" class="form-control" maxlength="32" value = "${entrust.fvoyage}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					提单号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftidan" type="text" class="form-control" maxlength="32" value = "${entrust.ftidan}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					目的港：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftarget" type="text" class="form-control" maxlength="32" value = "${entrust.ftarget}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					多选框：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<div style="padding-top:5px">
	            	<t:dictSelect field="fstyle" defaultVal = "${entrust.fstyle}" extendJson="{class:'i-checks'}" type="checkbox" hasLabel="false"  title="多选框"  typeGroupCode="fstyle" ></t:dictSelect>
	            	</div>
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					船公司：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fshipcom" type="text" class="form-control" maxlength="32" value = "${entrust.fshipcom}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					放箱公司：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fangxiang" type="text" class="form-control" maxlength="32" value = "${entrust.fangxiang}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					作业时间：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fzuoye" type="text" class="form-control" maxlength="32" value = "${entrust.fzuoye}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					到港时间：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="farrive" type="text" class="form-control" maxlength="32" value = "${entrust.farrive}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					截港时间：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcut" type="text" class="form-control" maxlength="32" value = "${entrust.fcut}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					货物属性：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
	            	<t:dictSelect field="fgoods" defaultVal = "${entrust.fgoods}" type="select" hasLabel="false" title="货物属性" extendJson="{class:'form-control'}"   typeGroupCode="goods" ></t:dictSelect>
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					转关地址：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftransit" type="text" class="form-control" maxlength="32" value = "${entrust.ftransit}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					转关联系人：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftransname" type="text" class="form-control" maxlength="32" value = "${entrust.ftransname}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					联系电话：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="ftransmobile" type="text" class="form-control" maxlength="32" value = "${entrust.ftransmobile}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					联合国编号：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fun" type="text" class="form-control" maxlength="32" value = "${entrust.fun}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					闪点：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="flash" type="text" class="form-control" maxlength="32" value = "${entrust.flash}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					冷藏温度：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fcold" type="text" class="form-control" maxlength="32" value = "${entrust.fcold}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					加热温度：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fhot" type="text" class="form-control" maxlength="32" value = "${entrust.fhot}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					危规页码：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fwei" type="text" class="form-control" maxlength="32" value = "${entrust.fwei}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					等级：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="fgrade" type="text" class="form-control" maxlength="32" value = "${entrust.fgrade}"  ignore="ignore"  />
				</div>
			</div>
		</div>
		<div class="bt-item col-md-6 col-sm-6">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
					集装箱经营人：
				</div>
				<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
					<input name="foperator" type="text" class="form-control" maxlength="32" value = "${entrust.foperator}"  ignore="ignore"  />
				</div>
			</div>
		</div>
					<div class="bt-item col-md-6 col-sm-6">
			        <div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 bt-label">
							备注：
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 bt-content">
						  	 	<textarea name="fnote" class="form-control input-sm" rows="6"  ignore="ignore" >${entrust.fnote}</textarea>
						<span class="Validform_checktip" style="float:left;height:0px;"></span>
						<label class="Validform_label" style="display: none">备注</label>
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