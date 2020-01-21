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
<div id="friendlist">
 <table border="1">
  <tr>
	<th>구분</th>
	<th>이름</th>
	<th>나이</th>
	<th>주소</th>
	<th>제거</th>
  </tr>
  
  <c:foreach items='${listuser}' var='user'>
  	<c:set var='i' value='${i+1}'/>
  		<tr>
		 <td><c:out value='${i}'/></td> 
		 <td><c:out value='${user.userName}'/></td>
		 <td><c:out value='${user.userAge}'/></td>
		 <td><c:out value='${user.userAddress}'/></td>
		 <td><button data-pid='${user.userName}'>제거</button></td> 		
  		</tr>
  </c:foreach>
 </table>
</div>
</body>
</html>