<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %> <!-- import 시키는 문법 -->
<%@ page import="com.javaex.vo.PersonVo" %>


<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> phoneList = phoneDao.getPhoneList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	
	<%for(int i=0; i<phoneList.size(); i++){%>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%= phoneList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= phoneList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%= phoneList.get(i).getCompany() %></td>
			</tr>
		
		</table>
		
		<br>
	<% }%>
	
	
	<a href="./writeForm.jsp">추가번호 등록</a>
</body>
</html>