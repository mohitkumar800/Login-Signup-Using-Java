<%--
  Created by IntelliJ IDEA.
  User: Ankit Shubham
  Date: 30-03-2023
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SignUp</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Carter+One&family=Oxygen:wght@700&display=swap');

    body{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    article{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
    }

    h1{
        font-family: 'Carter One', cursive;
        font-size: 50px;
        margin: 0;
    }

    form{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-between;
        font-family: 'Oxygen', sans-serif;
        box-shadow: inset 0 -3em 3em rgba(0, 0, 0, 0.1), 0 0 0 2px rgb(255, 255, 255),
        0.3em 0.3em 1em rgba(0, 0, 0, 0.3);
        padding:70px 40px;
    }

    .name,.pass,.mail{
        display: flex;
        flex-direction: column;
    }

    input{
        height: 30px;
        width: 300px;
        font-size: large;
        font-family: 'Oxygen', sans-serif;
        border-radius: 5px;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    label{
        font-size: 25px;
    }

    #submitBtn{
        background-color: #6C63FF;
    }

    #loginredirect{
        font-size: 15px;
    }

    a{
        text-decoration: none;
    }
</style>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
<div class="heading">
    <h1>SignUp</h1>
</div>
<article>
    <div class="photo">
        <img id="login_img" src="images/signup.svg" alt="login_img" />
    </div>
    <form action="SignUp" method="post">
        <div class="name">
            <label for="fname">First Name</label>
            <input type="text" required name="FirstName" id="fname"/>
            <label for="sname">Second Name</label>
            <input type="text" required name="SecondName" id="sname"/>
        </div>
        <div class="mail">
            <label >Email</label>
            <input type="email" required name="email">
        </div>
        <div class="pass">
            <label >Password</label>
            <input type="password" required name="pass" >
            <label >Confirm Password</label>
            <input type="password" required name="cnfpass" >
        </div>
        <input id="submitBtn" type="submit" value="SIGNUP" />
        <a id="loginredirect" href="login.jsp">Already have an account?<span>Login</span></a>
    </form>
</article>

</body>
</html>
