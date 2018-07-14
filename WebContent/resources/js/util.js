function contentAjax(ajaxObj, containerId){
	if(ajaxObj.success === null || ajaxObj.success === undefined){
		ajaxObj.success = function(response, status){
			$("#"+containerId).html(response);
		}
	}
	if(ajaxObj.error === null || ajaxObj.error === undefined){
		ajaxObj.error = function(error, status){
			$("#"+containerId).html(error);
		}
	}
	console.log(ajaxObj)
	$.ajax(ajaxObj);
}

function sendToken(){
	$(function () {
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});
	});
}