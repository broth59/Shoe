/**
 * 
 */
$(document).ready(function(){
	$(".evalbtns").each(function(idx,btn){
		if($(this).next().val()=='없음'){
			$(this).val("등록");
			$(this).css("background-color","red");
		}else{
			
		}
	});
});