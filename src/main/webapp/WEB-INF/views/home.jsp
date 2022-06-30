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
			<td bgcolor="#fff" align="center" height="500">
			
	<table bgcolor="#fff" height="120" width="250" cellspacing="10px">
		
			<tr align="center">
				<td class="board07" colspan="2" >
				<span class="">Uragil 도서관리시스템</span>
				</td>
		
		<%
			String id=(String)session.getAttribute("id");
			if(id.equals("admin")){
		%>
			<tr>
			<td class="board08" align="center"> <a href="book_input" style="color:green;">1.도서정보 입력</a></td>
		</tr>
		
		<tr>
			<td class="board08"  align="center"> <a href="book_list" style="color:green;">2. 도서정보 열람</a><td>
		</tr>
		<tr>
			<td class="board08" align="center"> <a href="br_input" style="color:green;">3. 대출정보 입력</a></td>
		</tr>
		
		<tr>
			<td class="board08" align="center"> <a href="br_list" style="color:green;">4. 대출정보 열람</a><td>
		</tr>
		
		<tr>
			<td class="board08" align="center" > <a href="member_list" style="color:green;">5. 회원정보 열람</a></td>
		</tr>
		<%
		} else{
		%>
		<tr>
			<td class="board08"  align="center"> <a href="book_list" style="color:green;">1. 도서정보 열람</a><td>
		</tr>
		
		<tr>
			<td    align="center"><td>
		</tr>
		<tr>
			<td class="board08"  align="center"> <a href="mbr_list" style="color:green;">2. 대출정보 열람</a><td>
		</tr>
		
		<tr>
			<td   align="center"> <td>
		</tr>
		
		<tr>
			<td class="board08" align="center" > <a href="infoModify?brmid=${id }" style="color:green;">3. 회원정보 수정</a></td>
		</tr>
		<%
		}
		%>
		
	</table>
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>