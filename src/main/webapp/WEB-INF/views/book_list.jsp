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
					</table>
				</form>
			
		</tr>
	</table>
	</center>
	
</body>
</html>