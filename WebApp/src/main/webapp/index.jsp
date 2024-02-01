<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h2{
            color: red;
            background-color: green;
        }
    </style>
</head>
<body>
    <h2>this is somethijng</h2>
    <%= new java.util.Date() %> <br>
    <%= new String("hello world").toUpperCase()  %> <br>
    <%= "HELLO world".toLowerCase() %> <br>
    25 multiplied by 4 equals  <%= 25*4 %> <br>
    is 75 less than 80 <%= 75 < 80%> <br>

    <%
    
    for(int i = 0; i < 10; i++){
        out.println("<br> this is: " + i  );
    }

    %> <br>

    <%!
        String makeItLower(String data){
            return data.toUpperCase();
        }
    %>
    <%= makeItLower("Hello something") %><br>
</body>
</html>