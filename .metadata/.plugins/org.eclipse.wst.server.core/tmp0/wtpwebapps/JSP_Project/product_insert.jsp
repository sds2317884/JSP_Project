<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<!-- @ : page지시자(tomcat WAS 에게!) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //스크립트를 쓴다(scriptlet-->자바코드를 쓰는 부분)
   	//HttpServletRequest request = new HttpServletRequest();
    //주소부분 중에서 id=110
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String content = request.getParameter("content");
    String price = request.getParameter("price");
    String company = request.getParameter("company");
    String img = request.getParameter("img");
    
    ProductVO bag = new ProductVO();
    bag.setID(id);
    bag.setNAME(name);
    bag.setCONTENT(content);
    bag.setPRICE(Integer.parseInt(price));
    bag.setCOMPANY(company);
    bag.setIMG(img);
    
    ProductDAO dao = new ProductDAO();
    dao.insert(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 등록 확인</h3>
<%= bag %> <!-- 표현식(expression) -->
<hr>
id : <%= id %> <br>
name : <%= name %> <br>
content : <%= content %> <br>
price : <%= price %> <br>
company : <%= company %> <br>
img : <%= img %> <br>
<hr>
<a href="product_insert.html">
<button>상품등록페이지로</button>
</a>
<a href="product.html">
<button>첫페이지로</button>
</a>
</body>
</html>