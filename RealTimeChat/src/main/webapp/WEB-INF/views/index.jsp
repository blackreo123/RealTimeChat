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
})

function init(){
	var 
}
</script>
<script type="text/javascript">
 function submitFunction(){
		var chatName=$("#chatName").val();
		var chatContent=$("#chatContent").val();
		$.ajax({
			type : "post",
			url: "submit",
			data : {"chatName":chatName, "chatContent":chatContent}
			});
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
							<div class="portlet-body chat widget"
								style="overflow-y: auto; width: auto; height: 300px;">
								<div class="row">
									<div class="col-lg-12">
										<p class="text-center text-muted small">2020.05.14</p>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="media">
											<a class="pull-left" href="#"> <img
												class="media-object img-circle"
												src="resources/images/icon.jpeg">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													윤지하 <span class="small pull-right">오후 9시 30분</span>
												</h4>
											</div>
											<p>안녕 난 윤지하</p>
										</div>
									</div>
								</div>
								<hr>
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