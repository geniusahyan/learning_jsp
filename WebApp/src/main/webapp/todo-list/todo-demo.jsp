<%@ page import="java.util.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="todo-demo.jsp">
        Todo:
        <input type="text" name="todo">
        <input type="submit" value="add">
    </form> <br> <br>

    item entered: <%= request.getParameter("todo") %>

    <%
        List<String> items = (List<String>) session.getAttribute("myTodoList");
        if(items == null){
            items = new ArrayList<String>();
            session.setAttribute("myTodoList",  items);
        }

        String todo = request.getParameter("todo");
        if(todo!= null){
            items.add(todo);
        }
    %>

    <hr>

    <b>Todo List Items</b> <br>

    <ol>
        <%
            for(String temp : items){
                out.println("<li>"+ temp +"</li>");
            }
        %>
    </ol>
</body>
</html>