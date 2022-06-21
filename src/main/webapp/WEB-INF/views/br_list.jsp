<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
								<td >대출코드</td>
								<td >도서코드</td>
								<td >회원ID</td>
								<td >대출일</td>
								<td >반납예정일</td>
								<td >반납상태</td>
							</tr>
							<c:forEach items="${br_list }" var="brdto">
							<tr>
								<td >${brdto.brcode }</td>
								<td >${brdto.fk_bcode }</td>
								<td >
									<c:choose>
										<c:when test="${fn:length(brdto.fk_mid) > 28}">
											<c:out value="${fn:substring(brdto.fk_mid,0,27) }" /> ......
										</c:when> 
										<c:otherwise>
											<c:out value="${brdto.mid}" />
										</c:otherwise>
									</c:choose>
								</a>
								</td>
								<td >${brdto.brsdate }</td>
								<td >
									<c:out value="${fn:substring(brdto.brsdate,0,16) }" /> 
								</td>
								<td >${brdto.brrdate }</td>
								<td >
									<c:out value="${fn:substring(brdto.brrdate,0,16) }" /> 
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