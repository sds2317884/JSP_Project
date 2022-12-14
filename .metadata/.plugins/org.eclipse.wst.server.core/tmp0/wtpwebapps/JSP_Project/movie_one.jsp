<%@page import="db_connect.MovieDAO"%>
<%@page import="db_connect.MovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String img = request.getParameter("img");
MovieDAO dao = new MovieDAO();
MovieVO bag = dao.one(img);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
  rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<table class="table-dark table">
		<tr>
		<td>항목명</td>
		<td>데이터</td>
		</tr>
		<tr>
		<td>제목</td>
		<td><%=bag.getNAME()%></td>
		</tr>
		<tr>
		<td>장르</td>
		<td><%=bag.getCONTENT()%></td>
		</tr>
		<tr>
		<td>점수</td>
		<td><%=bag.getRATE()%></td>
		</tr>
		<tr>
		<td>러닝타임</td>
		<td><%=bag.getRUNNING()%></td>
		</tr>
		<tr>
		<td>이미지</td>
		<td><a target="_blank" href="https://movie.naver.com/movie/bi/mi/basic.naver?code=<%=bag.getCODE() %>"> <img src="img/<%=bag.getIMG()%>"></a></td>
		</tr>
		
		
	</table>

</body>
</html>