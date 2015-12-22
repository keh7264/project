<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>프로젝트 참여 사원 관리</title>
</head>
<body>
	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".btn-primary").on("click", function() {
				formObj.attr("action", "/project/employeeManagement/add");
				formObj.attr("method", "post");
				formObj.submit();
			});

			$(".btn-danger").on("click", function() {
				formObj.attr("action", "/project/employeeManagement/remove");
				formObj.attr("method", "post");
				formObj.submit();
			});
			$(".btn-warning").on("click", function() {
				self.location = "/project/read?id=${projectVO.id}";
			});

		});
	</script>

	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>

			<div class="col-sm-8">
				<div class="page-header">
					<h2>프로젝트 참여 사원 관리</h2>
				</div>
				<br /> <br />
				<div class="well well-sm">
					<p>
						<label> 참여 사원</label>
					</p>
					<c:forEach items="${employeeListAll}" var="employeeVO">

						<form role="form" method="post">
							<p>
								<span class="label label-default"
									style="background-color: white; font-size: 15px;"><a
									href='/employee/read?id=${employeeVO.id }'>${employeeVO.name_ko}</a></span>
								<input type="hidden" name="project_id" value="${projectVO.id}">
								<input type="hidden" name="employee_id" value="${employeeVO.id}">
								<button type="submit" class="btn btn-danger btn-sm">삭제</button>
							</p>
						</form>

					</c:forEach>
					<br />
					<p>
						<label> 다른 사원 </label>
					</p>
					<c:forEach items="${others}" var="otherEmployeesVO">
						<div>
							<form role="form" method="post">
								<p>
									<input type="hidden" name="project_id"
										value="${projectVO.id}"> <input type="hidden"
										name="employee_id" value="${otherEmployeesVO.id}"> <span
										class="label label-default"
										style="background-color: white; font-size: 15px;"><a
										href='/employee/read?id=${otherEmployeesVO.id }'>${otherEmployeesVO.name_ko}</a></span>

									<button type="submit" class="btn btn-primary btn-sm">추가</button>
								</p>
							</form>
						</div>
					</c:forEach>
				</div>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div>
							<button type="submit" class="btn btn-warning">프로젝트 상세정보 페이지</button>

						</div>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</body>
</html>