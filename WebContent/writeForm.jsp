<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jspf"%>
<html>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
</head>

<body bgcolor="<%=bodyback_c%>">
<% 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }
%>

<div><a href="Health club.jsp"><img src="imgg/빨간맛.PNG" width="200" height="100" ></div></a><a href="cookieLoginForm.jsp">로그인</a><p>
<title>빨간맛</title>
</head>
<body>
<table border="1" cellspacing=0 cellpadding=5 width="100%" heught="100%">
<tr>
		<td colspan="2">
		<table border = 0 cellpadding=5 cellspacing =0 width="100%">
	      <tr>
		<td width="150" align="center"><a href="indexProc.jsp?control=red"><img src="imgg/빨간맛소개.PNG" width="150" height="80" ></a></td>
		<td width="150" align="center"><a href="indexProc.jsp?control=kimchi"><img src="imgg/판매상품.PNG" width="150" height="80" ></a></td>
		<td width="150" align="center"><a href="indexProc.jsp?control=event01"><img src="imgg/공지이벤트.PNG"  width="150" height="80" ></a></td>	
		<td width="150" align="center"><a href="indexProc.jsp?control=writeForm"><img src="imgg/고객문의.PNG" width="150" height="80" ></a></td>
		<td width="150" align="center"><a href="indexProc.jsp?control=complain"><img src="imgg/상품사용후기.PNG"  width="150" height="80" ></a></td>						
	     </tr>
       </table>
		
<p>글쓰기</p>
<form method="post" name="writeform" 
      action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

<table>
   <tr>
    <td align="right" colspan="2" bgcolor="<%=value_c%>">
	    <a href="list.jsp"> 글목록</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center">이 름</td>
    <td  width="330" align="left">
       <input type="text" size="10" maxlength="10" 
          name="writer" style="ime-mode:active;"></td><!--active:한글-->
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >제 목</td>
    <td  width="330" align="left">
    <%
      if(request.getParameter("num")==null) 
    	 strV = "";
      else
    	 strV = "[답변]";
    %>
    <input type="text" size="40" maxlength="50" name="subject"
         value="<%=strV%>" style="ime-mode:active;"></td>	
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center">Email</td>
    <td  width="330" align="left">
       <input type="text" size="40" maxlength="30" name="email"
           style="ime-mode:inactive;" ></td><!--inactive:영문-->
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >내 용</td>
    <td  width="330" align="left">
     <textarea name="content" rows="13" cols="40" 
              style="ime-mode:active;"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >비밀번호</td>
    <td  width="330" align="left">
     <input type="password" size="8" maxlength="12" 
             name="passwd" style="ime-mode:inactive;"> 
	 </td>
  </tr>
  <tr>      
    <td colspan=2 bgcolor="<%=value_c%>" align="center"> 
      <input type="submit" value="글쓰기" >  
      <input type="reset" value="다시작성">
      <input type="button" value="목록보기" OnClick="window.location='list.jsp'">
    </td>
  </tr>
  
</table>    
회사소개 &nbsp; 고객센터 &nbsp; 이용약관
	</tr>
	<tr><td><a href="Health club.jsp"><img src="imgg/빨간맛.PNG" width="200" height="100" ></td></tr>
 <%
  }catch(Exception e){}
%>     
</form>    
</body>
</html>