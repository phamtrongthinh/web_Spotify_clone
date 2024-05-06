<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Spotify.Profile" %>
<%@ Import Namespace="Spotify" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
  integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
  crossorigin="anonymous"
  referrerpolicy="no-referrer"
/>
    <link rel="stylesheet" href="../CSS/Music2.css" />
     <link rel="stylesheet" href="../CSS/StyleSheet1.css" />
  <link rel="stylesheet" href="../CSS/Profile.css" />
    <link rel="stylesheet" href="../CSS/Responsive.css" />
  </head>
  <body>
    <div class="wrapper">
      <div class="container">
        <div class="header-sidebar">
    <nav style="padding: 10px;" class="sidebar-nav" >
         <img src="../Images/Logo.png" alt="logo spotify">
        <ul>
            <li><a href="TrangChu.aspx"><i class="fa-solid fa-house"></i><span>Home</span></a></li>
            <li style="color: #ffffff">
                <a href="TimKiem.aspx"><i class="fa-solid fa-magnifying-glass"></i><span>Search</span></a>
            </li>
        </ul>
    </nav>
    <nav class="sidebar-nav box2" style="padding-bottom: 50px; ">
        <ul>
            <li>
                <div class="library"><i class=" fa-solid fa-book"></i><span>Your Library</span></div>
            </li>
            <div class="create">
                <i class="fa-solid fa-plus plus"></i>
                <p class="hover">Share music to my page</p>
                <a href="Sharing.aspx">
                    <p class="active">Sharing now</p>
                </a>
            </div>
            <li>
                <div class="sidebar-scroll">
                    <h4>Liked Songs</h4>
                    <div class="playlist liked liked-songs">
                        <a href="Music.aspx?album=playlist">
                            <button class="btn">Playlist</button>
                        </a>
                    </div>
                    <h4>Liked Albums</h4>
                    <div class="playlist liked liked-albums">
                        <div class="liked-item">
                            <span>1</span>
                            <p>LOI CHOI . Album</p>
                            <i class="fa-regular fa-heart"></i>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="privacy">
            <ul>
                <li>
                    <a>Legal</a>
                    <a>Safe & Privacy Center</a>
                </li>
                <li>
                    <a>Privacy Policy</a>
                    <a>Cookies</a>
                    <a>About Ads</a>
                </li>
                <li>
                    <a>Acessbility</a>
                </li>
                <li>
                    <a>Cookies</a>
                </li>
            </ul>
        </div>
        <div class="eng-btn">
            <i class="fa-solid fa-globe"></i>
            <button>English</button>
        </div>
    </nav>
</div>
        <div  class="main">
          <div  class="content">
            <div style="background-color:transparent" class="top-nav trang3">
              <div class="prev-btn">
                <button><i style="color:#ffffff" class="fa-solid fa-chevron-left"></i></button>
                <button style="background-color:#0c251eac"><i   class="fa-solid fa-chevron-right"></i></button>
              </div>
                <div class="button" style="margin-right:20px">
                 <button id="dangXuat" class="btn">Log out</button>
                </div>
            </div>
            <div class="Music-play">
              <div class ="avatar">
                <i class="fa-regular fa-user"></i>
              </div>
              <div class="content">
                  <p class="catagory">Profile</p>
                  <h2 class="user_name" style="cursor: pointer;">Tan Thanh</h2>
                  <p class="describe">1 Public Playlist</p>
                  <div class ="user_box">
                    <h3>Profile details</h3>
                    <span><i class="fa-solid fa-x"></i></span>
                    <div class="box_setting">
                      <div class ="avatar">
                        <i class="fa-regular fa-user"></i>
                      </div>
                      <form action="" class="form-infor">
                        <input id="new_Username" type="text" value="Tan Thanh">
                        <br>
                        <button id="btn_save" type="submit" class="btn">Save</button>
                      </form>
                    </div>
                    <p style="margin: 20px; font-size: 120%;">
                      By proceeding, you agree to give Spotify access to the image you choose to upload. Please make sure you have the right to upload the image.
                    </p>
                  </div>
              </div>
            </div>
            <div id="Playlist" style="padding:0">
              <h2 style="margin-top: 40px;">Sharing Music</h2>
              <p style="margin:10px 20px;
              font-size: 130%;
              color: #a7a7a7">Only visibale to you</p>
                <ul class="spotify albums sharing_music">
                   
                </ul>
              <div class="playlist-song">
                <h2>Top tracks this month</h2>
                <p style="margin:10px 20px;
                font-size: 130%;
                color: #a7a7a7">Only visibale to you</p>
                <ul>
                  
                </ul>
              </div>
              <h2 style="margin-top: 40px;">PUBLIC PLAYLIST</h2>
              <ul class="spotify albums user_playlist">
                <a href="Music.aspx?album=playlist">
                <li class="item">
                  <img src="../Images/playlist.png" title="playlist">
                  <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                  <h4>My Playlist #1</h4>
                  <p>By Tan Thanh</p>
                </li>
                    </a>
              </ul>
              </div>     
            </div>  
            <div style="background-color: #121212" class="footer-section">
              <div class="footer1">
                <div class="footer-links">
                  <div class="footer-column">
                    <div>Company</div>
                    <ul class="col-links">
                      <li><a href="">About</a></li>
                      <li><a href="">Jobs</a></li>
                      <li><a href="">For the record</a></li>
                    </ul>
                  </div>
                  <div class="footer-column">
                    <div>Communities</div>
                    <ul class="col-links">
                      <li><a href="">For Artists</a></li>
                      <li><a href="">Developers</a></li>
                      <li><a href="">Advertising</a></li>
                      <li><a href="">Vendors</a></li>
                    </ul>
                  </div>
                  <div class="footer-column">
                    <div>Useful links</div>
                    <ul class="col-links">
                      <li><a href="">Support</a></li>
                      <li><a href="">Free Mobile App</a></li>
                    </ul>
                  </div>  
                </div>
                <div class="social-links">
                  <div>
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                  </div>
                </div>
              </div>
              <hr>
              <div >
                <p class="copyright">&copy; 2024 Spotify AB</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="preview music-box" style="background:none">
        <audio src="" id="audio"></audio>
          <div class="play-song">
            <img src="/Resources/Images/WrenEvans.jpg" alt="">
            <h5 class="play-songname">
              Phóng Đổ Tim Em
              <br>
              <p class="subtitle">Wren Evans, itsnk</p>
            </h5>
          </div>
          <div class="play-box">
            <div class="controls">
              <button class=" btnback"><i class="fa-solid fa-backward-step"></i></button>
              <button class="btn-play">
                <span></span>
                <span></span>
              </button>
              <button class="btnnext">
                <i class="fa-solid fa-forward-step"></i>
              </button>
            </div>
            <div class="music-slider">
              <input type="range" value="0" class="seek-bar" />
              <span class="current-time">00:00</span>
              <span class="music-time">00:00</span>
            </div>
          </div>
          <div class="music-volumn">
            <span><i id="vol-icon" class="fa-solid fa-volume-low"></i></span>
            <input type="range" value="0" class="volumn" />
          </div>
      </div>
      <script src="../JavaScript/Liked.js"></script>
    <script src="../JavaScript/Profile.js"></script>
    <script>
      let active= document.querySelector(".active");
      let plus = document.querySelector(".plus");
      let user_name=document.querySelector(".user_name");
      let user_box=document.querySelector(".user_box");
      let exit=document.querySelector(".user_box span");
      plus.addEventListener("click", function(){
        active.classList.toggle("show");
      })
      user_name.addEventListener("click", function(){
        user_box.classList.toggle("show");
      })
      exit.addEventListener("click", function(){
        user_box.classList.remove("show");
      })

      document.querySelector("#dangXuat").addEventListener("click",()=>{
        localStorage.removeItem("UserID");
        location.href = `TrangChu.aspx`;
      })
    </script>
  </body>
</html>
