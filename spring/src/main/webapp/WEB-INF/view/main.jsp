<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty authInfo }">
<!-- 로그인이 안된 상태 -->
<form action="login" method="post">
<table border=1>
<tr><td colspan="3">1111</td></tr>
<tr><td>아이디</td>
	<td>
		<input type="text" name="loginId" /><span>${userFail }</span>
	</td><td rowspan="2">
			<input type="image" src=""/>
		 </td></tr>
<tr><td>비밀번호</td>
	<td>
		<input type="password" name="loginPw"><span>${pwFail }</span>
	</td></tr>
<tr><td colspan="3">
		아이디/비밀번호 찾기 | 
		<a href="member/agree">회원가입</a>
	</td></tr>
</table>
</form>
<a href="emp/empList">직원정보 리스트</a><br />
</c:if>
<c:if test="${!empty authInfo }">
<c:if test="${authInfo.grade != 1 }">
<!-- 관리자로 로그인 -->
<a href="emp/empList">직원정보 리스트</a><br />
<a href="member/memList">회원 정보리스트</a><br />
<!-- 일반직원 로그인 -->
	<a href="emp/empMyPage">직원마이페이지</a>
<a href="prod/prodList">상품 정보 리스트</a>
</c:if>
<c:if test="${authInfo.grade == 1 }">
<!-- 사용자 로그인 -->
	<a href="member/memMyPage">마이페이지</a> 
</c:if>
<a href="logout">로그아웃</a>
</c:if>
</body>
</html>