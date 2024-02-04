<html>
    <body bgcolor="#333" style="color:white;" > 
        your name is: <%= request.getParameter("name") %> <br>
        your age is: <%= request.getParameter("age") %> <br>
        country is: <%= request.getParameter("country") %> <br>
        gender is: <%= request.getParameter("gender") %> <br>
        <%
            String[] hobby = request.getParameterValues("hobby");
            for(int i = 0; i < hobby.length; i++){
                out.println("<li>"+ hobby[i] +"</li>");
            }
        %>
    </body>
</html> 