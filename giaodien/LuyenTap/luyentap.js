

function getInput(){
	return document.getElementById("answer").value;
}

//random ảnh và hiển thị
function randomImg(index){
		var index;
		var nameLink = Math.floor((Math.random() *5) + 1);
		var linkFile;
		switch (nameLink)
		{
			case 1: linkFile = "../LuyenTap/img_demo/5.png"; break;
			case 2: linkFile = "../LuyenTap/img_demo/1.png"; break;
			case 3: linkFile = "../LuyenTap/img_demo/2.png"; break;
			case 4: linkFile = "../LuyenTap/img_demo/3.png"; break;
			case 5: linkFile = "../LuyenTap/img_demo/4.png"; break;
		}
		
		// thêm đối tượng image.
		
		for(var i=0; i<index; i++){
			var img = document.createElement("IMG");
			img.setAttribute("src",linkFile);
			document.getElementById("image").appendChild(img);
		}
	
		
	}

function Submit() {
	var index = Math.floor((Math.random() * 5) + 1); 			//random số lượng ảnh
	randomImg(index);
	var i = 1;
	
	$(function(){
		$('#Submit').click(function(){
    		getInput();				//lấy dữ liệu được người dùng nhập vào
    		$('.notif').empty();	//chưa thông báo 
    			//nếu nhập kết quả đúng
    			if (getInput() == index) {
    				var stt = 'true';
    				$(function(){
    					addNotif(stt);				//tạo thông báo là "CHÍNH XÁC"
						$('#true').fadeIn();		//hiện thông báo là "CHÍNH XÁC"
						$('#true').fadeOut(1000);	//ẩn thông báo đi
						$('#false').empty();		//xoa thông báo sai
						$('#image').empty();		//xóa hình ảnh trong class image

					});
					
					// Khi trả lời hết 5 câu hỏi
					if(i==5){
    					$('.content').remove();											//xóa nội dung trong class content
						var nextImg = '<img src="../LuyenTap/img_demo/next.png">';		//tạo hình ảnh thông báo đã hoàn thành bài luyện tập
						$('.notif').delay(1000).append(nextImg);									//hiển thị ảnh tại vị trí .notif
						$('#next').show();												//hiển thị button Qua Bài

    				}

    				//Khi chưa trả lời hết 5 câu hỏi
					if(i<5){
						index = Math.floor((Math.random() * 5) + 1);                    //random số lượng ảnh
    					randomImg(index);												// vẽ hình mới trong image
    					$('.content').show();											
    				}

    				i++;
    			}

    			//Nếu trả lời sai
    			else{
    				var stt = 'false';
    				$(function(){
    					addNotif(stt);			//tạo thông báo người dùng nhập sai
						$('#false').show();		//hiện thông báo là "sai rồi"
						$('#false').hide(3000);	//ẩn thông báo đi
					});
				}
		});
    });
}


function Help() {
	var index;
	$(function(){
		$('#help').click(function(){
			document.getElementById("DapAn").append("Đáp án: ", index, " hình");
		})
	});	
}

// Tạo thông báo bằng hình ảnh đúng/sai cho câu trả lời
function addNotif(stt) {
	var stt;
	if(stt == 'true'){
		var trueImg = '<img id="true" src="../LuyenTap/img_demo/true.png">';
		$('.notif').append(trueImg);
	}
	if (stt == 'false') {
		var trueImg = '<img id="true" src="../LuyenTap/img_demo/false.png">';
		$('.notif').append(trueImg);
	}
}

