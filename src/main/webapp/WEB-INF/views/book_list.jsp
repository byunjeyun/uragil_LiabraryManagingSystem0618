<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css?after">
<title>책 정보 목록</title>
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
					<table border="0" cellspacing="0" cellpadding="10">
							<tr>
								<form action="book_list"> 
								<td colspan="6" align="right">
								<select name="searchOption">
           							<option value="title">제목</option>
            						<option value="categori">장르</option>
            						<option value="writer">타이틀</option>
          						</select> 
							      <input type="text" name="searchKeyword">
							      <input type="submit" value="검색">
							   </td>
							   </form>
							</tr>
							<tr class="board01">
								<th >도서코드</th>
								<th width="250px" >타이틀</th>
								<th >장르</th>
								<th >저자</th>
								<th >대출상태</th>
								<th >반납예정일</th>
							</tr>
							
							<c:forEach items="${b_list }" var="bdto">
							<tr class="board02" align="center">
								<td  class="board02">${bdto.bcode}</td>
								<td  class="board03">${bdto.bname}</td>
								<td  class="board02">${bdto.bcategori}</td>
								<td  class="board02">${bdto.bwriter }</td>
								<td  class="board03">${bdto.bstate }</td>
								<td  class="board02"><c:out value="${fn:substring(bdto.rdate,2,11)}"/></td>
									
							</c:forEach>
							</tr>
							<tr >
							
							<td colspan="6"  align="right">
								<input class="button05" type="button" value="도서입력" onclick="location.href='book_input'">&nbsp;&nbsp;
								<input class="button05" type="button" value="대출열람" onclick="location.href='br_list'">&nbsp;&nbsp;	
								<input class="button05" type="button" value="홈으로" onclick="location.href='index'">
							</td>
						</tr>				
=======
<title>책 정보 목록</title>
</head>
<body>

	<%@ include file="include/header.jsp" %>

	<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr>
			<td align="center"></td>
		</tr>
		<tr>
			<td align="center" height=""></td>
		</tr>
					<table border="0" cellspacing="0" cellpadding="10">
							<tr>
								<td >북코드</td>
								<td >타이틀</td>
								<td >장르</td>
								<td >저자</td>
								<td >대출상태</td>
								<td >반납예정일</td>
							</tr>
							<c:forEach items="${blist }" var="bdto">
							<tr>
								<td >${bdto.bcode }</td>
								<td >${bdto.bname }</td>
								<td >
									<c:choose>
										<c:when test="${fn:length(bdto.bcatagori) > 28}">
											<c:out value="${fn:substring(bdto.bcategori,0,27) }" /> ......
										</c:when> 
										<c:otherwise>
											<c:out value="${bdto.bcategori}" />
										</c:otherwise>
									</c:choose>
								</a>
								</td>
								<td >${bdto.bwriter }</td>
								<td >
									<c:out value="${fn:substring(bdto.bstate,0,16) }" /> 
								</td>
							</tr>
							</c:forEach>
							<tr>
								<td colspan="5" align="right">
									<input type="button" class="button01" value="질문하기" onclick="location.href='question'">
							</td>
						</tr>					
>>>>>>> refs/remotes/origin/master
					</table>
				</form>
			
		</tr>
	</table>
	</center>
	
</body>
</html>