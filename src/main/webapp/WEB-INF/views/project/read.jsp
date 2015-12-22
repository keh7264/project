<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>프로젝트 상세정보</title>
</head>
<body>
	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".btn-primary").on("click", function() {
				formObj.attr("action", "/project/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$(".btn-danger").on("click", function() {
				formObj.attr("action", "/project/remove");
				formObj.submit();
			});
			$(".btn-warning").on("click", function() {
				self.location = "/project/list";
			});
		});
	</script>
	<br />
	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="page-header">
					<h2>프로젝트 상세정보</h2>
				</div>
				<br /> <br />
				<form role="form" method="post">
					<input type="hidden" name="id" value="${projectVO.id}">
				</form>
				<div class="well well-sm">
					<p>
						<label for="name"> 프로젝트명 </label>
					</p>
					<input type="text" name="name" value="${projectVO.name}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="start_date"> 시작일 </label>
					</p>
					<input type="text" name='start_date' readonly="readonly"
						value='${projectVO.start_date }' class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="end_date"> 마감예정일 </label>
					</p>
					<input type="text" name='end_date' readonly="readonly"
						value='${projectVO.end_date }' class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="website"> 웹사이트 </label>
					</p>
					<input type="text" name='website' readonly="readonly"
						value="${projectVO.website}" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="detail"> 세부사항 </label>
					</p>
					<textarea class="form-control" rows="3" name="detail"
						readonly="readonly">${projectVO.detail}</textarea>
				</div>
				<div class="well well-sm">
					<p>
						<label for="employee"> 참여사원 </label>
					</p>
					<div style="font-size: 20px;">
						<c:forEach items="${employeeList}" var="employeeVO">
							<span class="label label-default"
								style="background-color: white;"><a
								href='/employee/read?id=${employeeVO.id }'>${employeeVO.name_ko}</a></span>
						</c:forEach>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div>
							<button type="submit" class="btn btn-primary">수정</button>
							<button type="submit" class="btn btn-danger">삭제</button>
							<button type="submit" class="btn btn-warning">목록</button>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>

			</div>

			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>