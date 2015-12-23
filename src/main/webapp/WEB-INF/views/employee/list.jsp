<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
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
<title>EMPLOYEE LIST</title>
</head>
<body>
	<script>
		var result = '${result}';
		if (result == 'success') {
			alert('처리가 완료되었습니다.');
		}
	</script>
	<br />
	<div class="container">

		<div class="row">
			<div class="col-sm-2"></div>

			<div class="col-sm-8">
				<div class="page-header">
					<h2>EMPLOYEE LIST</h2>
					<p>
						<a href="/project/list">GO TO PROJECT LIST PAGE</a>
					</p>
				</div>
				<br /> <br />
				<p>
					<a href="/employee/register">사원 등록하기</a>
				</p>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="employeeVO">
							<tr>
								<td>${employeeVO.id}</td>
								<td><a href="/employee/read?id=${employeeVO.id }">${employeeVO.name_ko}</a></td>
								<td>${employeeVO.phone}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${employeeVO.reg_date }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	</div>
</body>
</html>
