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
	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);

			$(".modify-btn").on("click", function() {
				formObj.attr("action", "/employee/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$(".remove-btn").on("click", function() {
				formObj.attr("action", "/employee/remove");
				formObj.submit();
			});
			$(".list-btn").on("click", function() {
				self.location = "/employee/list";
			});
		});
	</script>

	<form role="form" method="post">
		<input type="hidden" name="id" value="${employeeVO.id}">
	</form>
	<div>
		<p>
			<label for="name_ko"> 한글이름 </label>
		</p>
		<input type="text" name='name_ko' value="${employeeVO.name_ko}"
			readonly="readonly">
	</div>
	<div>
		<p>
			<label for="name_en"> 영문이름 </label>
		</p>
		<input type="text" name='name_en' value="${employeeVO.name_en}"
			readonly="readonly">
	</div>
	<div>
		<p>
			<label for="phone"> 전화번호 </label>
		</p>
		<input type="text" name='phone' value="${employeeVO.phone}"
			readonly="readonly">
	</div>
	<div>
		<p>
			<label for="email"> 이메일 </label>
		</p>
		<input type="text" name='email' value="${employeeVO.email}"
			readonly="readonly">
	</div>
	<div>
		<p>
			<label for="address"> 주소 </label>
		</p>
		<input type="text" name='address' value="${employeeVO.address}"
			readonly="readonly">
	</div>
	<div>
		<p>
			<label for="regdate"> 등록일 </label>
		</p>
		<input type="text" name='regdate' value="${employeeVO.regdate}"
			readonly="readonly">
	</div>

	<div>
		<button type="submit" class="modify-btn">수정</button>
		<button type="submit" class="remove-btn">삭제</button>
		<button type="submit" class="list-btn">목록</button>
	</div>

</body>
</html>