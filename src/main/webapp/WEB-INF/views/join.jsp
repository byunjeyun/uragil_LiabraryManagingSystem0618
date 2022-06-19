<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>Insert title here</title>
</head>


<body>
<%@ include file="include/header.jsp" %>
<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">

				<form action="joinOk" method="post" name="reg_frm">
					<table bgcolor="#388" height="120" width="400" cellspacing="10px">
						<form action="joinOk" method="post" name="reg_frm">				
						<tr align="right" >
							<td>
								<span class="text01">MEMBER ID:</span>
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
							
						<tr align="right">
							<td>
									<span class="text01">PW CHECK :</span>
							</td>
							<td>
								<input class="type01" type="password" name="mpw_check">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="text01">NAME :</span>
							</td>
							<td>
								<input class="type01" type="text" name="mname">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="text01">전화번호 :</span>
							</td>
							<td>
								<input class="type01" type="text" name="mphone">
							</td>
						</tr>
						
						<tr>
							<td colspan="2"  align="right">
								<input class="" type="button" value="회원가입" onclick="joinCheck()">&nbsp;&nbsp;	
								<input class="" type="button" value="로그인" onclick="location.href='login'">
							</td>
						</tr>
						</form>											
					</table>						
		
					
			
		</tr>
	</table>
	</center>
</body>
</html>