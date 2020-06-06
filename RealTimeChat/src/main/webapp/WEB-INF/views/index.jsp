<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, inital-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/custom.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script type="text/javascript">
$(function(){
	init();
	getmugen();
	var jikan=new Date().toISOString().substring(0,10);
	$("#jikan").html(jikan);
})

function init(){
	$.ajax({
		type : "get"
		,url: "getList"
		,success: showList
		})
}
function getmugen(){
	setInterval(function(){
		init();},500)
}
function showList(resp){
	
	var data='';
	$.each(resp, function(index,item){
		data +='<div class="row">';
		data +='<div class="col-lg-12">';
		data +='<div class="media">';
		data +='<a class="pull-left" href="#"> <img class="media-object img-circle" src="resources/images/icon.jpeg"></a>';
		data +='<div class="media-body">';
		data +='<h4 class="media-heading">'+item.chatName+'<span class="small pull-right">'+item.chatTime+'</span></h4>';
		data +='</div>';
		data +='<p>'+item.chatContent+'</p>';
		data +='</div></div></div><hr>';
		})
	$("#listHere").html(data);
	
}
function submitFunction(){
	var chatName=$("#chatName").val();
	var chatContent=$("#chatContent").val();
	$.ajax({
		type : "post",
		url: "submit",
		data : {"chatName":chatName, "chatContent":chatContent},
		success: init
		});
	$("#SC").scrollTop($("#SC")[0].scrollHeight);
	$("#chatContent").val('');
 }
</script>	
<title>실시간 익명 채팅</title>
</head>
<body>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i>실시간 채팅방
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
							<div id="SC" class="portlet-body chat widget"
								style="overflow-y: auto; width: auto; height: 700px;">
								<div class="row">
									<div class="col-lg-12">
										<p class="text-center text-muted small" id="jikan"></p>
									</div>
								</div>
								<div id="listHere"></div>
								
							</div>
							<div class="portlet-footer">
								<div class="row">
									<div class="form-grop col-xs-4">
										<input style="height: 40px;" type="text" id="chatName"
											class="form-control" placeholder="이름" maxlength="20px;">
									</div>
								</div>
								<div class="row" style="height: 90px;">
									<div class="form-grop col-xs-10">
										<textarea style="height: 80px;" id="chatContent" class="form-control" placeholder="메시지를 입력하세요" maxlength="100"></textarea>
									</div>
									<div class="form-grop col-xs-2">
										<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>