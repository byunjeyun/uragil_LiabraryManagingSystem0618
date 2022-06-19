<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="100%" cellspacing="0" cellpadding="0">
		<tr height="50" bgcolor="#111111" >
			<td width="80%" class="header02">&nbsp;</td>
			<td width="5%" class="header01"><a href="/">첫화면</a></td>
			<td width="5%" class="header01">		
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
								
			<td width="5%" class="header01">
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