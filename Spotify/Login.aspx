﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spotify.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link rel="stylesheet" href="../CSS/Signup.css"></link>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../CSS/Responsive.css" />
</head>
<body class="login_body">
    <header class="login_header">
      <img style="margin: 35px; width:120px" src="../Images/Logo.png" />
    </header>
    <main>
      <div class="sign_up login">
       <form action="">
        <h2>Log in to Spotify</h2>
        <div>
          <p>Email or username</p>
          <br />
          <input type="email" class="email" placeholder="Email or username" />
        </div>
        <div class="error error-email"></div>
        <div>
          <p>Password</p>
          <br />
          <input type="password" class="password" placeholder="password" />
        </div>
        <div class="error error-password"></div>
        <label id="remember" class="switch">
            <input type="checkbox" checked>
            <span class="slider round"></span>
        </label><p class="remember">Remember me</p>
        <br />
        <button class="login_btn" type="">Login</button>
        <br>
        <a class="forgot" href=""> Forgot your password?</a>
        <br />
        <p class="have">Don't have an account? <a href="Signup.aspx">Sign up to Spotify.</a>
      </div>
      <div class="sign_up_footer">
        <p>This site is protected by reCAPTCHA and the Google </p>
        <p><a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</p>
       </form>
     </div>
    </main>
    <footer>
    </footer>
    <script src="../JavaScript/Login.js"></script>
  </body>
</html>
