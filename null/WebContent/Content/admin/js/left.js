/**
 * 
 */

$(document).ready(function() {
	$("#addproduct").on("click",function(){
		$(this).attr("href","/null/Content/admin/inputStock.jsp");
	});
	$("#searchproduct").on("click",function(){
		$(this).attr("href","/null/Content/admin/searchStock.jsp");
	});
});

