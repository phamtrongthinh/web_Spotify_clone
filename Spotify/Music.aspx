<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Music.aspx.cs" Inherits="Spotify.Music" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Music</title>
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../CSS/StyleSheet1.css" />
    <link rel="stylesheet" href="../CSS/Music.css" />
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
                            <div class="library"><i class=" fa-solid fa-book"></i><span>Your Music</span></div>
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
            <div class="main">
                <div class="content">
                    <div style="background-color: transparent" class="top-nav trang3">
                        <div class="prev-btn">
                            <button><i style="color: #ffffff" class="fa-solid fa-chevron-left"></i></button>
                            <button style="background-color: #0c251eac"><i class="fa-solid fa-chevron-right"></i></button>
                        </div>
                        <a class="user_link" href="Profile.aspx">
                            <div class="user_icon">
                                <i class="fa-regular fa-user"></i>
                            </div>
                        </a>
                    </div>
                    <div class="Music-play">

                        <img src="../Images/loiChoi.jfif" alt="WrenEvans">
                        <div class="content">
                            <p class="catagory">Album</p>
                            <h2 class="song">LOI CHOI</h2>
                            <p class="describe"></p>
                        </div>


                    </div>
                    <div id="Playlist">
                        <div class="playlist-button">
                            <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                            <div class="like-btn"><i class="fa-regular fa-heart"></i></div>
                            <div class="more-btn"><i class="fa-solid fa-ellipsis"></i></div>

                        </div>
                        <div class="playlist-song">
                            <li style="margin-left: -10px">
                                <span>#</span>
                                <h5>Title
                                <br>
                                </h5>
                                <span class="songtime">Time</span>
                            </li>
                            <hr>

                            <li class="songItem">
                                <span class="soTT"></span>
                                <img src="../Images/loiChoi.jfif">
                                <h5 class="songname"></h5>
                                <p class="artist"></p>
                                <div class="like-btn"><i class="fa-regular fa-heart"></i></div>
                                <span class="songtime">2:14</span>
                            </li>


                        </div>
                    </div>
                    <div style="background-color: #121212" class="footer-section">
                        <div class="footer1">
                            <div class="footer-links">
                                <div class="footer-column">
                                    <div>Company</div>
                                    <ul class="col-links">
                                        <li><a>About</a></li>
                                        <li><a>Jobs</a></li>
                                        <li><a>For the record</a></li>
                                    </ul>
                                </div>
                                <div class="footer-column">
                                    <div>Communities</div>
                                    <ul class="col-links">
                                        <li><a>For Artists</a></li>
                                        <li><a>Developers</a></li>
                                        <li><a>Advertising</a></li>
                                        <li><a>Vendors</a></li>
                                    </ul>
                                </div>
                                <div class="footer-column">
                                    <div>Useful links</div>
                                    <ul class="col-links">
                                        <li><a>Support</a></li>
                                        <li><a>Free Mobile App</a></li>
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
                        <div>
                            <p class="copyright">&copy; 2024 Spotify AB</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="preview music-box" style="background:none">
            <audio src="../Musics/WREN EVANS - Tò Te Tí - LOI CHOI The First Album (ft. itsnk).mp3" id="audio"></audio>
            <div class="play-song">
                <img src="/Resources/Images/WrenEvans.jpg" alt="">
                <h5 class="play-songname">Phóng Đổ Tim Em
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
    </div>
    <script src="../JavaScript/Music2.js"></script>
     <script src="../JavaScript/Liked.js"></script>
    <script>
        let active = document.querySelector(".active");
        let plus = document.querySelector(".plus");
        plus.addEventListener("click", function () {
            active.classList.toggle("show");
        })

    </script>
</body>
</html>
