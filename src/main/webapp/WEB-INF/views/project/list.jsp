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
<title>Employee list page</title>
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
					<h2>PROJECT LIST Page</h2>
					<p>
						<a href="/employee/list">GO TO EMPLOYEE LIST PAGE</a>
					</p>
				</div>
				<br /> <br />
				<p>
					<a href="/project/register">프로젝트 등록하기</a>
				</p>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>프로젝트명</th>
							<th>시작일</th>
							<th>마감일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="projectVO">
							<tr>
								<td>${projectVO.id}</td>
								<td><a href="/project/read?id=${projectVO.id }">${projectVO.name}</a></td>
								<td>${projectVO.start_date }</td>
								<td>${projectVO.end_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>
