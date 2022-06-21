<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
					</table>
				</form>
			
		</tr>
	</table>
	</center>
	
</body>
</html>