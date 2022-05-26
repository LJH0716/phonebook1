<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>

<%
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

/*
System.out.println(name);
System.out.println(hp);
System.out.println(company);
*/

//1.personVo 메모리에 올림(Person 객체 만들기)
PersonVo personVo = new PersonVo(name, hp, company);
System.out.println(personVo);

//2.생성자 name hp company 넣어주기

//3.PhoneDao 객체 만들기
PhoneDao phoneDao = new PhoneDao();

//4.PhoneDao의 phoneInsert()를 이용해서 저장하기
int count = phoneDao.phoneInsert(personVo);
System.out.println(count);

//응답은 리스트로 리다이렉트 시킨다.
	//list.jsp 로 다시 요청한다.
	response.sendRedirect("./list.jsp");
%>
	