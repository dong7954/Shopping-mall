<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
환영합니다.<br>
이름:<%= request.getParameter("name")%>님 안녕하세여 <br>
아이디<%= request.getParameter("id")%>님~! <br>
비밀번호는<%= request.getParameter("pass")%>입니다 <br>
입력하신 나이는  <%= request.getParameter("age")%>세 입니다. 
로그인 되었습니다.<br><br>
<hr>
<%
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
if(age >= 20){
	out.println(age + "님의 나이는 " +age+"세 20세 이상입니다.");
}else{
	out.print(age + "님의 나이는 "+age +"미성년자 입니다.");
}

	%>


</body>
</html>