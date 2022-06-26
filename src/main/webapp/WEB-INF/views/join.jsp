<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
</head>


<body>
<%@ include file="include/header.jsp" %>
<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">

				<form action="joinOk" method="post" name="reg_frm">
					<table bgcolor="#112" height="120" width="300" cellspacing="10px">
						<form action="joinOk" method="post" name="reg_frm">				
						<tr align="center">
							<td class="board01" colspan="2" >
							<span class="content05">회원가입</span><br><br>
							</td>
						</tr>
						
						<tr align="right" >
							<td>
								<span class="text01">ID:</span>
							</td>
							<td>
								<input  type="text" name="mid">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="text01">PW :</span>
							</td>
							<td>
								<input  type="password" name="mpw">
							</td>
							
						<tr align="right">
							<td>
									<span class="text01">PWCHECK :</span>
							</td>
							<td>
								<input  type="password" name="mpw_check">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="text01">NAME :</span>
							</td>
							<td>
								<input type="text" name="mname">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="text01">PHONE :</span>
							</td>
							<td>
								<input  type="text" name="mphone">
							</td>
						</tr>
						
						<tr>
							<td colspan="2"  align="right">
								<input class="button01" type="button" value="회원가입" onclick="joinCheck()">
							</td>
						</tr>
						<tr>
							<td colspan="2"  align="right">
								<input class="button03" type="button" value="로그인" onclick="location.href='login'">
								<input class="button03" type="button" value="홈으로" onclick="location.href='index'">
								<input class="button03" type="button" value="홈으로" onclick="location.href='index'">			
							</td>
						</tr>
						</form>											
					</table>						
		
					
			
		</tr>
	</table>
	</center>
</body>
</html>