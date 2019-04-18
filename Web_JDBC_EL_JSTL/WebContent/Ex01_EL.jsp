<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//login.html -> submit -> Ex01_Basic.jsp
	String id = request.getParameter("userid");
	//id다른 페이지서도 공유
	//include, forward
	
	request.setAttribute("naem","korea");
	
	session.setAttribute("user","bit");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
EL : JSP 페이지에서 사용하는 스크립트 언어(화면 출력)
이유 : 스파게티(%.... html 태그가 혼재되는 코드)
	문제를 개선하기 위해서 script 기반의 EL & JSTL 언어 생성
	두가지 언어는 JSP 페이지에서만 사용가능
	
EL : JSP 페이지에서 화면 출력 목적(% 녀석없이 server 자원 출력)

EL 스크립트에언어(기본 객체를 제공)
 -->
 
 스크립트릿 : <b><%= id%></b>
 스크립트릿 : <%= request.getAttribute("name") %>
 <hr>
 EL request value : ${requestScope.name}<br>
 원칙(고수) : EL session value : ${sessionScope.user}<br>
 EL session value (생략) : ${user}<br>
 <hr>
 <br>
 EL request parameter : ${param.userid}<br>
 
 <h3>EL(JSP 사용되는 스크립트 언어)</h3>
 스크립트릿: <%=200+400%><br>
 EL은 표현식 >> 화면에 출력
 EL:${200+300 }<br>
 EL: ${"1"+1}<br>
 EL: ${1==1}<br>
 EL: ${empty x }<br>
</body>
</html>



















