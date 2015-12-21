<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee REGISTER Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<br />
	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="page-header">
					<h2>Employee REGISTER Page</h2>
				</div>
				<br /> 
				<form role="form" method="post">
					<input type="hidden" name="id" value="${employeeVO.id}">

					<div class="well well-sm">
						<p>
							<label for="name_ko"> 한글이름 </label>
						</p>
						<input type="text" name="name_ko" value="${employeeVO.name_ko}"
							class="form-control">
					</div>
					<div class="well well-sm">
						<p>
							<label for="name_en"> 영문이름 </label>
						</p>
						<input type="text" name='name_en' value="${employeeVO.name_en}"
							class="form-control">
					</div>
					<div class="well well-sm">
						<p>
							<label for="phone"> 전화번호 </label>
						</p>
						<input type="text" name='phone' value="${employeeVO.phone}"
							class="form-control">
					</div>
					<div class="well well-sm">
						<p>
							<label for="email"> 이메일 </label>
						</p>
						<input type="text" name='email' value="${employeeVO.email}"
							class="form-control">
					</div>
					<div class="well well-sm">
						<p>
							<label for="address"> 주소 </label>
						</p>
						<input type="text" name='address' value="${employeeVO.address}"
							class="form-control">
					</div>

					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<div>
								<button type="submit" class="btn btn-primary">저장</button>
							</div>
						</div>
						<div class="col-sm-3"></div>
					</div>
				</form>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>