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
<title>Insert title here</title>
</head>
<body>
	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".btn-primary").on("click", function() {
				formObj.attr("action", "/employee/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$(".btn-danger").on("click", function() {
				formObj.attr("action", "/employee/remove");
				formObj.submit();
			});
			$(".btn-warning").on("click", function() {
				self.location = "/employee/list";
			});
		});
	</script>
	<br />

	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>

			<div class="col-sm-8">
				<div class="page-header">
					<h2>Employee Detail Page</h2>
				</div>
				<br /> <br />
				<form role="form" method="post">
					<input type="hidden" name="id" value="${employeeVO.id}">
				</form>
				<div class="well well-sm">
					<p>
						<label for="name_ko"> 한글이름 </label>
					</p>
					<input type="text" name="name_ko" value="${employeeVO.name_ko}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="name_en"> 영문이름 </label>
					</p>
					<input type="text" name='name_en' value="${employeeVO.name_en}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="phone"> 전화번호 </label>
					</p>
					<input type="text" name='phone' value="${employeeVO.phone}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="email"> 이메일 </label>
					</p>
					<input type="text" name='email' value="${employeeVO.email}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="address"> 주소 </label>
					</p>
					<input type="text" name='address' value="${employeeVO.address}"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="regdate"> 등록일 </label>
					</p>
					
					<input type="text" name='regdate'
						value="<fmt:formatDate pattern='yyyy-MM-dd hh:mm'
										value='${employeeVO.regdate }' />"
						readonly="readonly" class="form-control">
				</div>
				<div class="well well-sm">
					<p>
						<label for="project"> 참여 프로젝트 </label>
					</p>
					<div style="font-size: 20px;">
						<c:forEach items="${projectList}" var="projectVO">
							<span class="label label-default"
								style="background-color: white;"><a
								href='/project/read?id=${projectVO.id }'>${projectVO.name}</a></span>
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
					<div class="col-sm-4"></div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</body>
</html>