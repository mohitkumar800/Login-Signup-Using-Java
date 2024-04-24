<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login</title>
</head>
<style>
  /* @import url('https://fonts.googleapis.com/css2?family=Oxygen:wght@300&display=swap'); */
  /* font-family: 'Oxygen', sans-serif; */
  @import url('https://fonts.googleapis.com/css2?family=Carter+One&family=Oxygen:wght@700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Carter+One&display=swap');
  /* font-family: 'Carter One', cursive; */

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
    font-family: 'Oxygen', sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    /* box-shadow: 2px 2px 2px 2px black; */
    box-shadow: inset 0 -3em 3em rgba(0, 0, 0, 0.1), 0 0 0 2px rgb(255, 255, 255),
    0.3em 0.3em 1em rgba(0, 0, 0, 0.3);
    padding:150px 75px;
  }

  label{
    font-size: 25px;
  }

  #forgotPass{
    font-size: 15px;
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

  #submitBtn{
    background-color: #6C63FF;
  }

  #login_img{
    height: 400px;
    width: 900px;
  }

  a{
    text-decoration: none;
  }
</style>
<body>
<div class="heading">
  <h1>Login</h1>
</div>
<article>
  <div class="photo">
    <img id="login_img" src="images/Hello.svg" alt="login_img" />
  </div>
  <form action="Login" method="post">
    <div class="mail">
      <label>Email</label><br />
      <input type="email" required name="email" /><br />
    </div>
    <div class="pass">
      <label>Password</label><br />
      <input type="password" required name="pass" />
    </div>
    <a id="forgotPass" href="#">Forgot Password?</a>
    <input id="submitBtn" type="submit" value="LOGIN" />
    <a  href="signUp.jsp">Don't have an account?SignUp</a>
  </form>
</article>
</body>
</html>
