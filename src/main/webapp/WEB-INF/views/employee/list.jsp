<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		var result = '${result}';
		if (result == 'success') {
			alert('처리가 완료되었습니다.');
		}
	</script>
	<p><a href="/employee/register">사원 등록하기</a></p>
	<table border='1'>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${list}" var="EmployeeVO">
			<tr>
				<td>${EmployeeVO.id}</td>
				<td><a href="/employee/read?id=${EmployeeVO.id }">${EmployeeVO.name_ko}</a></td>
				<td>${EmployeeVO.phone}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd"
						value="${EmployeeVO.regdate }" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
