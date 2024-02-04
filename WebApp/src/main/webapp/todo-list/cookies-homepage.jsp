<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="cookies-personalize.html">return</a> <br><br>

    <%
        String favlang = "java";
        Cookie[] theCookie = request.getCookies();
        if(theCookie != null){
            for(Cookie temp : theCookie){
                if("myApp.language".equals(temp.getName())){
                    favlang = temp.getValue();
                    break;
                }
            }
        }
    %>
    <b>Language: </b> <%= favlang %>
</body>
</html>