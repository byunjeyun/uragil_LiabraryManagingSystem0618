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
	<center>
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#dfd" align="center" height="500">
			
	<table bgcolor="#112" height="120" width="400" cellspacing="10px">
		
			<tr align="center">
				<td class="board01" colspan="2" >
				<span class="content05">Uragil 도서관리시스템</span><br><br>
				</td>
			</tr>
		
		
		<tr>
			<td class=""align="center"> <a href="book_input" style="color:white;">1.도서정보 입력</a></td>
		</tr>
		
		<tr>
			<td    align="center"> <a href="book_list" style="color:white;">2. 도서정보 열람</a><td>
		</tr>
		<tr>
			<td class=""align="center"> <a href="br_input" style="color:white;">3. 대출정보 입력</a></td>
		</tr>
		
		<tr>
			<td   align="center"> <a href="br_list" style="color:white;">4. 대출정보 열람</a><td>
		</tr>
		
		<tr>
			<td align="center" > <a href="" style="color:white;">5. 회원정보 열람</a></td>
		</tr>
	</table>
			</td>
		</tr>
	</table>
	</center>
</body>
</html>