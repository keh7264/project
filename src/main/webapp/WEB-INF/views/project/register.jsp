<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<script>
		$(document).ready(function() {
			var formObj = $("form[name='form']");

			console.log(formObj);

			$(".btn-primary").on("click", function() {
				console.log("btn clicked");
				validateForm();
				formObj.submit();

			});
			
			function validateForm() {

				var start_date = $('#start_date').val();
				if (start_date == ""||start_date.isNull() ||start_date.isEmpty())
					$('#start_date').val("");
				var end_date = $('#end_date').val();
				if (end_date.equal(""))
					$('#end_date').val(null);
			}
		});
	</script>
	<br />
	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="page-header">
					<h2>프로젝트 등록</h2>
				</div>
				<br /> <br />
				<form name="form" method="post">
					<input type="hidden" name="id" value="${projectVO.id}">

					<div class="well well-sm">
						<p>
							<label for="name"> 프로젝트명 </label>
						</p>
						<input type="text" name="name" value="${projectVO.name}"
							class="form-control" required>
					</div>
					<div class="well well-sm">
						<p>
							<label for="start_date"> 시작일 (yyyy-mm-dd) </label>
						</p>
						<input type="text" name='start_date' class="form-control"
							id="start_date">
					</div>
					<div class="well well-sm">
						<p>
							<label for="end_date"> 마감예정일 (yyyy-mm-dd) </label>
						</p>
						<input type="text" name='end_date' class="form-control"
							id="end_date">
					</div>
					<div class="well well-sm">
						<p>
							<label for="website"> 웹사이트 </label>
						</p>
						<input type="text" name='website' class="form-control">
					</div>
					<div class="well well-sm">
						<p>
							<label for="detail"> 세부사항 </label>
						</p>
						<textarea class="form-control" rows="3" name="detail"></textarea>

					</div>

					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<div>
								<button type="submit" class="btn btn-primary">저장</button>
							</div>
						</div>
						<div class="col-sm-4"></div>
					</div>
				</form>
			</div>

			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>