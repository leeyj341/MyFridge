<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getAttribute("recipeList") %>
	<table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>돈</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${recipeList}" var="recipeVO">
                <tr>
                    <td>${recipeList.amount_per_person}</td>
                    <td>${recipeList.name}</td>
                    <td>${recipeList.content_intro}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>