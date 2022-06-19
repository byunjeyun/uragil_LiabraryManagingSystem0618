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
	<table width="70%" border="0" cellspacing="0" cellpadding="20">
		<tr height="500">
			<td bgcolor="d5d5d5" align="center">
				<%
					int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
					if(checkId == 1) {
				%>
				<script type="text/javascript">
					alert("입력하신 아이디는 이미 사용중 입니다!. 다른 아이디를 입력하세요.");
					history.go(-1);
					reg_frm.mid.focus();
				</script>
				<%
					}
				%>
										
				<span class="content01"> 
				'${mname }' 님 회원가입을 축하 드립니다.<br>
				가입한 ID는</span> <span class="text03">'${mid}' </span> 입니다.
			</td>		
		</tr>
	</table>
	</center>
	

</body>
</html>