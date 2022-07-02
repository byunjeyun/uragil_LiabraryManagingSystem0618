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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css?after">
<title>Insert title here</title>
</head>


<body>
<%@ include file="include/header.jsp" %>
<h2 align="center">Uragil 도서 관리시스템 웹에 방문해 주셔서 감사합니다.</h2> <br>

<center>	
		<table width="600" border="0" cellspacing="0" cellpadding="10">
		<tr height="450">
			<td style="background-image:url('${pageContext.request.contextPath }/resources/img/open-book.jpg'); " align="center" height="400" >
		<form action="loginOk" method="post">
			<table bgcolor="#112" height="120" width="300" cellspacing="10px">
				
				
			<tr align="center">
				<td class="board01" colspan="2" >
				<span class="content05">도서관리시스템 사용을 위해<br> 로그인 해주세요</span><br><br>
				</td>
			</tr>
				
				<tr align="right" >
					<td>
						
					</td>
					<td>
						
					</td>
				</tr>
				
				<tr align="right">
					<td>
						
					</td>
					<td>
						
					</td>
					
				</tr>
				
				<tr>
					<td colspan="2"  align="right">
						<input class="button01" type="button" value="로그인" onclick="location.href='login'">
					</td>
				</tr>
				<tr>	
					<td colspan="2"  align="right">
						
						<input class="button04" type="button" value="회원가입" onclick="location.href='join'">
						
					</td>
				</tr>					
			</table>
				</td>
				</tr>
			</table>
		</form>
	
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>