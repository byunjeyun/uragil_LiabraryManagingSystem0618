<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>	
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr height="530">
			<td bgcolor="#bbbbbb" align="center" height="500">
				<form action="bookOk" method="post" name="reg_frm">
				<table>
					<table bgcolor="#333333" height="120" width="400" cellspacing="10px">
					
						<tr align="right" >
							<td>
								<span >도서코드</span>
							</td>
							<td>
								<input  type="text" name="bcode">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span >도서명 :</span>
							</td>
							<td>
								<input  type="text" name="bname">
							</td>
							
						<tr align="right">
							<td>
									<span >장르</span>
							</td>
							<td>
								<input  type="text" name="bcategori">
							</td>
						</tr>
						
						<tr align="right">
							<td>
									<span >작가 :</span>
							</td>
							<td>
								<input  type="text" name="bwriter">
							</td>
						</tr>
						
												
						<tr>
							<td colspan="2"  align="right">
								<input type="button" value="회원가입" onclick="joinCheck()">&nbsp;&nbsp;	
								<input type="button" value="로그인" onclick="location.href='login'">
							</td>
						</tr>
											
						</table>						

					</table>
					</form>
		</tr>
	</table>
	</center>
	
</body>
</html>
</body>
</html>