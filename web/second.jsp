<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String num1Str = request.getParameter("num1");
    String num2Str = request.getParameter("num2");
    int num1 = Integer.parseInt(num1Str);
    int num2 = Integer.parseInt(num2Str);

    int gcd = 1;
    for (int i = 1; i <= num1 && i <= num2; i++) {
        if (num1 % i == 0 && num2 % i == 0) {
            gcd = i;
        }
    }
%>
<html>
<head>
    <title>Second Page</title>
</head>
<body>
<h2>GCD of <%= num1 %> and <%= num2 %> is <%= gcd %></h2>
</body>
</html>