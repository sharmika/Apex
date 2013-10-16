function show() {
	var yearMonth = gettingDate();
	AJAX.onreadystatechange = handler;
	AJAX.open("POST", 'longterm?yearMonth=' + yearMonth, true);
	AJAX.send("");
};

function createXMLHttpRequest() {
	// See http://en.wikipedia.org/wiki/XMLHttpRequest
	// Provide the XMLHttpRequest class for IE 5.x-6.x:
	if (typeof XMLHttpRequest == "undefined")
		XMLHttpRequest = function() {
			try {
				return new ActiveXObject("Msxml2.XMLHTTP.6.0")
			} catch (e) {
			}
			try {
				return new ActiveXObject("Msxml2.XMLHTTP.3.0")
			} catch (e) {
			}
			try {
				return new ActiveXObject("Msxml2.XMLHTTP")
			} catch (e) {
			}
			try {
				return new ActiveXObject("Microsoft.XMLHTTP")
			} catch (e) {
			}
			throw new Error("This browser does not support XMLHttpRequest.")
		};
	return new XMLHttpRequest();
}

var AJAX = createXMLHttpRequest();


function gettingDate() {
	
	var months = new Array(12);
	months[0] = "Jan";
	months[1] = "Feb";
	months[2] = "Mar";
	months[3] = "Apr";
	months[4] = "May";
	months[5] = "Jun";
	months[6] = "Jul";
	months[7] = "Aug";
	months[8] = "Sep";
	months[9] = "Oct";
	months[10] = "Nov";
	months[11] = "Dec";

	var current_date = new Date();
	month_value = current_date.getMonth();
	day_value = current_date.getDate();
	year_value = current_date.getFullYear();
	return year_value + "-" + 6;
}


function dayAhead(x,y){
	//alert("day ahead");
	$.ajax({
		type : 'POST',
		contentType : "application/json",
		url : "dayahead?x=" + x + "&y=" + y,
		data : {
		//yearMonth : yearMonth
		},
		statusCode : {
			200 : function(msg, textStatus, jqXHR) {
				//alert(' status code! success');
				dayAheadhandler(msg, textStatus, jqXHR);
			},
			400 : function() {
				alert('400 status code! user error');
			},
			500 : function() {
				alert('500 status code! server error');
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			AjaxError(XMLHttpRequest, textStatus, errorThrown);
		}
	});
	
}
