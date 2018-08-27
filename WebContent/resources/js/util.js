function contentAjax(ajaxObj, containerId){
	var url = ajaxObj.url;
	var name =  url.split("/").pop();
	if(ajaxObj.success === undefined || ajaxObj.success === null){
		ajaxObj.success = function(response, status){
			$("#"+containerId).html(response);
		}
	}
	if(ajaxObj.error === undefined || ajaxObj.error === null){
		ajaxObj.error = function(error, status){
			$("#"+containerId).html(error);
		}
	}
	$.ajax(ajaxObj);
	var strObj = ajaxObj;
	var splittedURL = url.split("/");
	splittedURL.pop();
	splittedURL.push("principal");
	splittedURL.push(name);
	var refreshedUrl = splittedURL.join("/");
	var stateObj = {
			url: url,
	}
	
	window.history.pushState(stateObj, name, refreshedUrl);
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


//funcion para convertir un objecto a json
jQuery.extend({
    stringify  : function stringify(obj) {
        var t = typeof (obj);
        if (t != "object" || obj === null) {
            // simple data type
            if (t == "string") obj = '"' + obj + '"';
            return String(obj);
        } else {
            // recurse array or object
            var n, v, json = [], arr = (obj && obj.constructor == Array);

            for (n in obj) {
                v = obj[n];
                t = typeof(v);
                if (obj.hasOwnProperty(n)) {
                    if (t == "string") v = '"' + v + '"'; else if (t == "object" && v !== null) v = jQuery.stringify(v);
                    json.push((arr ? "" : '"' + n + '":') + String(v));
                }
            }
            return (arr ? "[" : "{") + String(json) + (arr ? "]" : "}");
        }
    }
});