<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <%
        String favlang = request.getParameter("language");
        Cookie theCookie = new Cookie("myApp.language", favlang);
        theCookie.setMaxAge(3);
        response.addCookie(theCookie);
    %>
<body>
    <a href="cookies-homepage.jsp">return</a>
</body>
</html>