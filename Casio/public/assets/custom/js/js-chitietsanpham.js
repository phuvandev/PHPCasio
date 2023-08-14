//-------------------------------- Show phân khúc của sản phẩm: ------------------------------------------
// document.getElementById("click-segment1").onclick = function () {
//     document.getElementById("show-segment1").style.display = 'block';
// 	document.getElementById("show-segment2").style.display = 'none';
	
// };
// document.getElementById("click-segment2").onclick = function () {   // Phân khúc 2
//     document.getElementById("show-segment2").style.display = 'block';
// 	document.getElementById("show-segment2").style.zIndex = '20';
// 	document.getElementById("show-segment1").style.display = 'none';
// };
function changeImage(imageSrc) {
    document.getElementById('show-segment1').src = imageSrc;
}

