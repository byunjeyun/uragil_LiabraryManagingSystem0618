<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css?after">
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">
				<form action="br_inputOk" method="get" name="reg_frm">
				<table>
					<table bgcolor="#fff" height="120" width="300" cellspacing="10px">
						
							<tr align="center">
							<td colspan="2" >
							<span class="content05">대출정보 입력</span>
							</td>
						</tr>
						
					
						<tr align="right">
							<td>
									<span class="content03" >도서코드 :</span>
							</td>
							<td>
								<input  type="text" name="brbcode">
							</td>
							
						<tr align="right">
							<td>
									<span class="content03" >회원ID :</span>
							</td>
							<td>
								<input  type="text" name="brmid">
							</td>
						</tr>
						
					
						
						<tr>
							<td colspan="2"  align="right">
								<input class="button04" type="submit" value="대출정보 입력">
								
							</td>
						</tr>
						<tr>
							<td colspan="2"  align="right">
								<input class="button03" type="button" value="도서정보" onclick="location.href='book_list'">
								<input class="button03" type="button" value="대출정보" onclick="location.href='br_list'">
								<input class="button03" type="button" value="대출정보" onclick="location.href='br_list'">
								
=======
</head>
<body>

	<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">
				<form action="brOk" method="post" name="reg_frm">
				<table>
					<table bgcolor="#333333" height="120" width="400" cellspacing="10px">
					
						<tr align="right" >
							<td>
								<span >대출번호 :</span>
							</td>
							<td>
								<input  type="text" name="brcode">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span >도서코드 :</span>
							</td>
							<td>
								<input  type="text" name="brbcode">
							</td>
							
						<tr align="right">
							<td>
									<span >회원id :</span>
							</td>
							<td>
								<input  type="text" name="brmid">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span >대출일 :</span>
							</td>
							<td>
								<input  type="text" name="brsdate">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span >반납예정일 :</span>
							</td>
							<td>
								<input  type="text" name="brrdate">
							</td>
						</tr>
						
						<tr>
							<td colspan="2"  align="right">
								<input type="button" value="정보입력" onclick="brCheck()">&nbsp;&nbsp;	
								<input type="button" value="홈으로" onclick="location.href='index'">
>>>>>>> refs/remotes/origin/master
							</td>
						</tr>
											
						</table>						

					</table>
					</form>
		</tr>
	</table>
	</center>
	
</body>
</html>
</body>
</html>