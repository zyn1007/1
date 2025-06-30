<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input Page</title>
</head>
<body>
<form action="input.jsp" method="post">
    <label for="rows">Enter number of rows:</label>
    <input type="number" id="rows" name="rows" required><br><br>

    <label for="cols">Enter number of columns:</label>
    <input type="number" id="cols" name="cols" required><br><br>

    <label for="num1">Enter first number:</label>
    <input type="number" id="num1" name="num1" required><br><br>

    <label for="num2">Enter second number:</label>
    <input type="number" id="num2" name="num2" required><br><br>

    <input type="submit" value="Submit">
</form>

<!-- Include first.jsp only when rows and cols are provided -->
<% if (request.getParameter("rows") != null && request.getParameter("cols") != null) { %>
    <jsp:include page="first.jsp">
        <jsp:param name="rows" value="<%= request.getParameter(\"rows\") %>"/>
        <jsp:param name="cols" value="<%= request.getParameter(\"cols\") %>"/>
    </jsp:include>
<% } %>

<!-- Include second.jsp only when num1 and num2 are provided -->
<% if (request.getParameter("num1") != null && request.getParameter("num2") != null) { %>
    <jsp:include page="second.jsp">
        <jsp:param name="num1" value="<%= request.getParameter(\"num1\") %>"/>
        <jsp:param name="num2" value="<%= request.getParameter(\"num2\") %>"/>
    </jsp:include>
<% } %>

</body>
</html>
