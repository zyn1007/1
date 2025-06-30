<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String rowsStr = request.getParameter("rows");
    String colsStr = request.getParameter("cols");

    int rows = 0;
    int cols = 0;

    // 参数校验，防止空值导致 NumberFormatException
    if (rowsStr != null && !rowsStr.isEmpty()) {
        rows = Integer.parseInt(rowsStr);
    }

    if (colsStr != null && !colsStr.isEmpty()) {
        cols = Integer.parseInt(colsStr);
    }
%>
<html>
<head>
    <title>First Page</title>
</head>
<body>
<h2>Table with <%= rows %> rows and <%= cols %> columns</h2>
<table border="1">
    <% for (int i = 0; i < rows; i++) { %>
    <tr>
        <% for (int j = 0; j < cols; j++) { %>
        <td><%= (i * cols + j + 1) %></td>
        <% } %>
    </tr>
    <% } %>
</table>
</body>
</html>
