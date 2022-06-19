<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>도서관리 시스템 로그인</title>


</head>


<body>
<%@ include file="include/header.jsp" %>
<h2>도서관리 시스템 입니다. 로그인!! 해주세요.</h2>
	
	<center>	
		<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">
		<form action="loginOk" method="post">
			<table bgcolor="#338888" height="120" width="400" cellspacing="10px">
				<tr align="right" >
					<td>
						<span class="text01">MEMBER ID :</span>
					</td>
					<td>
						<input class="type01" type="text" name="mid">
					</td>
				</tr>
				
				<tr align="right">
					<td>
							<span class="text01">PASSWORD :</span>
					</td>
					<td>
						<input class="type01" type="password" name="mpw">
					</td>
					
				</tr>
				
				<tr>
					<td colspan="2"  align="right">
						<input class="button01" type="submit" value="로그인">&nbsp;&nbsp;
						<input class="button01" type="button" value="회원가입" onclick="location.href='join'">
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