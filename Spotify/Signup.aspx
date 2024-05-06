﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Spotify.Signup" %>

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
</head>
<body>
    <header >
      <img style="margin: 20px; width:100px" src="../Images/Logo.png" />
    </header>
    <main>
      <div class="sign_up">
        <form action="">
          <h2>Sign up to start listening</h2>
          <div>
            <p>Name</p>
            <br>
            <input type="text" class="username" placeholder="This name will appear on your profile" />
          </div>
          <div class="error error-username"></div>
          <div>
            <p>Email address</p>
            <br />
            <input type="email" class="email" placeholder="name@domain.com" />
          </div>
          <div class="error error-email"></div>
          <div>
            <p>Password</p>
            <br />
            <input type="password" class="password" placeholder="password" />
          </div>
          <div class="error error-password"></div>
          <div>
            <p>Confirm password</p>
            <br />
            <input
              type="password"
              class="confirm_password"
              placeholder="confirm password"
              />
          </div>
          <div class="error error-confirmPassword"></div>
          <button class="signup_btn" type="submit">Sign up</button>
          <br />
          <p style="margin-left:50px; display:inline-block">Already have an account? </p><a href="Login.aspx">Log in here.</a>
        </form>
      </div>
      <div class="sign_up_footer">
        <p>This site is protected by reCAPTCHA and the Google </p>
        <p><a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</p>
     </div>
    </main>
    <footer>
    </footer>
    <script src="../JavaScript/Signup.js"></script>
</body>
</html>
