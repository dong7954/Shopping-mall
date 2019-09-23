<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String content = request.getParameter("contentPage");%> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<body>
<title>빨간맛</title>
</head>
<p>
<table border="0" cellspacing=cellpadding=5width="100%" heught="100%">
   <tr>
      <td colspan="2"><jsp:include page="topmenu.jsp" flush="false" /></td> 
   </tr>
      
      <td><jsp:include page="<%= content %>" flush="false"/></td>
   <tr>
   </tr>
   <tr>
          
   </tr>
</table>


</body>
</html>