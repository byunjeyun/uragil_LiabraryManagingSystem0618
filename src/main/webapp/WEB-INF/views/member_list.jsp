<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css?after">

<title>회원 정보 목록</title>
</head>
<body>

	<%@ include file="include/header.jsp" %>

	<center>	
	<table width="75%" border="0" cellspacing="0" cellpadding="10" >
		<tr>
			<td align="center"></td>
		</tr>
		<tr>
			<td align="center" height=""></td>
		</tr>
					<table border="0" cellspacing="0" cellpadding="10" >
							<tr>
								
								<td colspan="2"align="left">
								<span class="content01">회원정보 목록</span></td>
								<form action="member_list"> 
								
								<td colspan="4" align="right">
								<!--
								<select name="searchOption">
           							<option value="title">제목</option>
            						<option value="categori">장르</option>
            						<option value="writer">저자</option>
          						</select> 
							      <input type="text" name="searchKeyword">
							      <input type="submit" value="검색">
							       -->
							   </td>
							   </form>
							</tr>
							<tr class="board01">
								<th >회원ID</th>
								<th >회원명</th>
								<th >연락처</th>
								<th >대출상태</th>
								<th >반납예정일</th>
							</tr>
							
							<c:forEach items="${m_list }" var="mdto">
							<tr class="board02" align="center">
								<td  class="board02">${mdto.mid}</td>
								<td  class="board02">${mdto.mname}</td>
								<td  class="board02">${mdto.mphone }</td>
								
								<c:if test="${bdto.bstate !=null}">
								<td  class="board04">${mdto.bstate }</td>
								</c:if>
								
															          
							</c:forEach>
							</tr>
							<tr><td> </td></tr>
							<tr >
							<td colspan="6"  align="right">
								<input class="button03" type="button" value="정보수정" onclick="location.href='book_input'">&nbsp;&nbsp;
								
								<input class="button03" type="button" value="홈으로" onclick="location.href='index'">
							</td>
						</tr>				

					</table>
				</form>
			
		</tr>
	</table>
	</center>
	
</body>
</html>