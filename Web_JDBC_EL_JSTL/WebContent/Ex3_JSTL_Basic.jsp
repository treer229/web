<%@page import="java.util.HashMap"%>
<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%
	Emp e = new Emp();
	e.setEname("홍길동");
	e.setEmpno(9999);

	HashMap<String, String> hp = new HashMap<>();
	hp.put("data","1004");
	hp.put("data2","1005");
	//객체는 JSPL로 잡아서 EL로 출력한다.
	//Map<String, String> hp = new HashMap<>();
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
기존방식:<%=e %><br>
기존방식:<%=e.getEmpno() %><br>
기존방식:<%=e.getEname() %><br>

<h3>EL(출력)</h3>
EL은 직접 접근 불가${e}<br>
${e.getEmpno()}<br>

1.JSTL(core) 변수생성, 제어문<br>
<c:set var="m" value="<%=e%>"/>
JSTL 변수 m을 만들고 서버쪽 객체 주소값을  설정 : ${m }<br>
<hr>
EL 출력 : JSTL 변수값을 출력 : ${m}<br>
EL 출력 : JSTL 변수: ${m.getEmpno()}<br>
EL 출력 : 변수통해서 getter 함수 호출(member field) : ${m.empno}<br>
EL 출력 : 변수통해서 getter 함수 호출(member field) : ${m.ename}<br>

<h3>EL & JSTL 사용하기</h3>
******EL 통해서 객체에 직접 접근 불가*********<br>
******e 객체를 : request, session을 담으면 EL 접근 가능******<br>

JSTL변수의 (value)값으로 EL 표현식으로 사용할 수 있다.
<c:set var="username" value="${m.ename}"></c:set><br>
변수가 담긴 값을 출력 : ${username}<br>

<hr>
<h3>JSTL 변수 만들고 Scope 정의 하기</h3>
<c:set var="job" value="농구선수" scope="request"/>
당신의 직업은 : ${job}<br>
[include]or[forward]된 페이지에서 JSTL변수값을 공유할 수 있다.
변수 삭제하기<br>
<c:set var="job2" value="야구선수" scope="request"/>
${job2 }<br>
<c:remove var="job2"/>
job2 변수 삭제: ${job2 }<br>

<c:set var="vhp" value="<%=hp%>"/>
${vhp }<br>
<!-- 
 hp.put("color","red");
 -->
 
 JSTL 

</body>
</html>