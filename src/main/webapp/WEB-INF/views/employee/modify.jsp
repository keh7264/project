<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form role="form" method="post">
		<input type="hidden" name="id" value="${employeeVO.id}">

		<div>
			<p>
				<label for="name_ko"> 한글이름 </label>
			</p>
			<input type="text" name="name_ko" value="${employeeVO.name_ko}">
		</div>
		<div>
			<p>
				<label for="name_en"> 영문이름 </label>
			</p>
			<input type="text" name="name_en" value="${employeeVO.name_en}">
		</div>
		<div>
			<p>
				<label for="phone"> 전화번호 </label>
			</p>
			<input type="text" name='phone' value="${employeeVO.phone}">
		</div>
		<div>
			<p>
				<label for="email"> 이메일 </label>
			</p>
			<input type="text" name='email' value="${employeeVO.email}">
		</div>
		<div>
			<p>
				<label for="address"> 주소 </label>
			</p>
			<input type="text" name='address' value="${employeeVO.address}">
		</div>
	</form>
	<div>
		<button type="submit" class="save-btn">SAVE</button>
		<button type="submit" class="cancel-btn">CANCEL</button>
	</div>

	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".cancel-btn").on("click", function() {
				self.location = "/employee/list";
			});

			$(".save-btn").on("click", function() {
				formObj.submit();
			});
		});
	</script>
</body>
</html>