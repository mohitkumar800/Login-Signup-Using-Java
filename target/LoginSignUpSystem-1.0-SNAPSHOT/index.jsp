<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if(session.getAttribute("email")==null){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Carter+One&family=Oxygen:wght@700&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Philosopher&display=swap');


    *{
        margin: 0;
        padding: 0;
    }

    body,form{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h1{
        font-family: 'Carter One', cursive;
    }

    img{
        height: 600px;
        width: 1000px;
    }

    input{
        height: 40px;
        width: 100px;
        font-size: 25px;
        font-family: 'Philosopher', sans-serif;
        cursor: pointer;
        background-color: rgb(0, 255, 251);
        border-radius: 4px;
    }
</style>
<body>
<form action="Logout" method="post">
    <h1>Hey there, <%=session.getAttribute("email")%></h1>
    <h1>You have successfully logged in.</h1>
    <img src="images/Welcome.jpg" alt="welcome" />
    <input type="submit" name value="Logout" />
</form>
</body>
</html>