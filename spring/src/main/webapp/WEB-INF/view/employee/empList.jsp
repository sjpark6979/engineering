<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
직원리스트 페이지입니다.<br />

<table border="1">
	<tr><td>사원번호</td></tr>
	<tr><td>이름</td></tr>
	<tr><td>부서명</td></tr>
	<tr><td>이메일</td></tr>
	<tr><td>전화번호</td></tr>
	<c:forEach items="${empList}" var="dto">
	<tr><td>${dto.empNo}</td></tr>
	<tr><td>${dto.empName}</td></tr>
	<tr><td>${dto.empDeptNumber}</td></tr>
	<tr><td>${dto.empEmail}</td></tr>
	<tr><td>${dto.empPhoneNumber}</td></tr>
	</c:forEach>
</table>
<a href="empReget">직원등록</a>
</body>
</html>