<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">

<title>Insert title here</title>
</head>
<body>
	<table width="100%" cellspacing="0" cellpadding="0">
		<tr height="50" bgcolor="#111111" >
			<td width="60%" class="header01">&nbsp;</td>
			<td width="100" class="header01"><a href="index">홈화면</a></td>
			<td width="100" class="header01">		
			<%
				String sessionValid = (String) session.getAttribute("id");
				if(sessionValid == null){
			%>
			<a href="/login">로그인</a>
			<%
			}else{
			%>
			<a href="logout">로그아웃</a></td>
			<%
			}
			%>
								
			<td width="100" class="header01">
			<%
				if(sessionValid == null){
			%>
			<a href="join">회원가입</a>
			<%
			}else{
			%>
			<a href="infoModify">정보수정</td>
			<%
			}
			%>
			
		</tr>
		
		<tr height="50">
			<td>&nbsp;</td>
		</tr>
					
	</table>
	
	

</body>
</html>