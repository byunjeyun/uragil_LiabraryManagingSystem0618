<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>도서관리 시스템 로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css?after">
</head>


<body>
<%@ include file="include/header.jsp" %>

	
	<center>	
		<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">
		<form action="loginOk" method="post">
			<table bgcolor="#112" height="120" width="300" cellspacing="10px">
				
				
			<tr align="center">
				<td class="board01" colspan="2" >
				<span class="content05">로그인</span><br><br>
				</td>
			</tr>
				
				<tr align="right" >
					<td>
						<span class="text01"> ID :</span>
					</td>
					<td>
						<input type="text" name="mid">
					</td>
				</tr>
				
				<tr align="right">
					<td>
							<span class="text01">PW :</span>
					</td>
					<td>
						<input  type="password" name="mpw">
					</td>
					
				</tr>
				
				<tr>
					<td colspan="2"  align="right">
						<input class="button01" type="submit" value="로그인">
					</td>
				</tr>
				<tr>	
					<td colspan="2"  align="right">
						<input class="button03" type="button" value="홈으로" onclick="location.href='index'">
						<input class="button03" type="button" value="홈으로" onclick="location.href='index'">
						<input class="button03" type="button" value="회원가입" onclick="location.href='join'">
						
					</td>
				</tr>					
			</table>
				</td>
				</tr>
			</table>
		</form>
			
	
	</center>
	
</body>
</html>