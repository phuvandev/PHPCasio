//---------------------------slideshow-----------------------------------
var i = 1;
var N = 5;

function next(){
	if(i<N){
		i += 1;
	}
	else
		i = 1;
	document.getElementById("img-slideshows").setAttribute("src","assets/custom/Anh/Slide/slideshow"+i+".png")	
}
function autoPlay(){
	setInterval(next,3000)
}

//-------------------Dòng sản phẩm---------------------------------------------
$(document).ready(function(){ 
	//Sự kiện: đóng mở nội dung của "mức giá"
	$("#plc2-select-option").click(function() { 
		$(this).next().slideToggle();				
	});
});

//-------------------Chuyển hướng trang 404---------------------------------------------
// function Search() {
// 	var searchvalue = document.getElementById("hm-text-search").value;
// 	if(searchvalue == "" || searchvalue.includes(" "))
// 	{
// 		window.location.href="/error404";
// 	}
// 	else {
// 		window.location.href="/";
// 	}
// }

