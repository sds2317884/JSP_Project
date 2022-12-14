<%@page import="db_connect.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
ProductDAO dao = new ProductDAO();
ArrayList<ProductVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
  rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
th{background-color: blue;}
body {background-color: coral;}
table{background-color: white;}
h3{color: white;}
tr{
text-align: center;
}
tr:nth-child(even){
background-color: #f2f2f2
}
</style>

</head>
<body>
	<h3>
		게시물 전체 개수 :
		<%=list.size()%>개
	</h3>
	
	<table class="table table-hover" border="1">
		<tr>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상품내용</th>
			<th>상품가격</th>
			<th>상품제작회사</th>
			<th>상품이미지</th>
		</tr>
		<%
		for (ProductVO bag : list) {
		%>
		<tr>
			<td><%=bag.getID()%></td>
			<td><%=bag.getNAME()%></td>
			<td><%=bag.getCONTENT()%></td>
			<td><%=bag.getPRICE()%></td>
			<td><%=bag.getCOMPANY()%></td>
			<td><img src="img/<%=bag.getIMG()%>" width ="100" height="100"></td>
		</tr>
		<%
		} //for
		%>
	</table>

</body>
</html>