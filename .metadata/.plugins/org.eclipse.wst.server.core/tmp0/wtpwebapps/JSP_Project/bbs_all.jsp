<%@page import="java.util.Random"%>
<%@page import="db_connect.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 입력 -- 처리 -- 출력 -->
<%
BbsDAO dao = new BbsDAO();
ArrayList<BbsVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String[] colors = {"primary", "success", "info", "warning", "danger",
						"active", "secondary", "light", "dark"};
	Random r = new Random();
	
%>
</head>
<body>
	<h3>
		게시물 전체 개수 :
		<%=list.size()%>개
	</h3>
	<table border="1">
		<tr >
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr class="table-<%= colors[r.nextInt(9)] %>">
			<td><%=list.get(i).getId()%></td>
			<td>
			<a href="http://localhost:8989/web01/one.jsp?no=<%=list.get(i).getId()%>">
				<%=list.get(i).getTitle()%>
			</a>
			<td><%=list.get(i).getContent()%></td>
			<td><%=list.get(i).getWriter()%></td>
		</tr>
		<%
		} //for
		%>
	</table>
</body>
</html>
