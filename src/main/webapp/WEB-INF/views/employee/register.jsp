<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form role="form" method="post">
		<div>
			<label for="name_ko"> 한글이름 </label> <input type="text" name='name_ko'>
		</div>
		<div>
			<label for="name_en"> 영문이름 </label> <input type="text" name='name_en'>
		</div>
		<div>
			<label for="phone"> 전화번호 </label> <input type="text" name='phone'>
		</div>
		<div>
			<label for="email"> 이메일 </label> <input type="text" name='email'>
		</div>
		<div>
			<label for="address"> 주소 </label> <input type="text" name='address'>
		</div>
		<div>
			<button type="submit">등록하기</button>
		</div>
	</form>
</body>
</html>