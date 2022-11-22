<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/input.js"></script>
<title>Insert title here</title>

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
			<td bgcolor="#bbb" align="center" height="500">
				<form action="b_modifyOk" method="get" name="breg_frm">
				<table>
					<table bgcolor="#fff" height="120" width="300" cellspacing="10px">
					
						<tr align="center">
							<td colspan="2" >
							<span class="content05">도서정보 수정</span>
							</td>
						</tr>
						<input  type="hidden" name="bcode" value="${bDto.bcode}">
						<tr align="right">
							<td>
								<span class="content03" >도서명 :</span>
							</td>
							<td >
								<input  type="text" name="bname" value="${bDto.bname}">
							</td>
							
						<tr align="right">
							<td  >
									<span class="content03">장르 :</span>
							</td>
							<td  >
								<input  type="text" name="bcategori" value="${bDto.bcategori}">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span class="content03">작가 :</span>
							</td>
							<td>
								<input  type="text" name="bwriter" value="${bDto.bwriter}">
							</td>
							
						</tr>
						
												
						<tr>
							<td colspan="2" align="right">
								<input class="button01" type="button" value="수정내용 입력" onclick="inputCheck()">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<input class="button03" type="button" value="도서정보" onclick="location.href='book_list'">
								<input class="button03" type="button" value="도서입력" onclick="location.href='book_list'">
								<input class="button03" type="button" value="대출정보" onclick="location.href='br_list'">
							</td>
						</tr>					

						</table>						

					</table>
					</form>
		</tr>
	</table>
	</center>
<%@ include file="include/footer.jsp" %>	

</body>
</html>