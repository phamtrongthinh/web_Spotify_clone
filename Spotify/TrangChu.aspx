<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Spotify.TrangChu" %>

<%@ Import Namespace="Spotify" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Chu</title>
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
                <nav class="sidebar-nav">
                    <img src="../Images/Logo.png" alt="logo spotify"/>
                    <ul>
                        <li style="color: #ffffff"><i class="fa-solid fa-house"></i><span>Home</span></li>
                        <li>
                            <a href="TimKiem.aspx"><i class="fa-solid fa-magnifying-glass"></i><span>Search</span></a>
                        </li>
                    </ul>
                </nav>
                <nav class="sidebar-nav box2">
                    <ul>
                        <li>
                            <div class="library"><i class=" fa-solid fa-book"></i><span>Your Music</span></div>
                        </li>
                        <div class="create">
                            <i class="fa-solid fa-plus plus"></i>
                            <p class="hover">Share music to my page</p>
                            <a href="Sharing.aspx"><p class="active">Sharing now</p></a>
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
                    <div class="top-nav">
                        <div class="prev-btn">
                            <button><i class="fa-solid fa-chevron-left"></i></button>
                            <button><i class="fa-solid fa-chevron-right"></i></button>
                        </div>
                        <div class="button">
                            <a href="Signup.aspx">
                                <button class="sign-up">Sign up</button></a>
                            <a href="Login.aspx">
                                <button class="btn login">Log in</button></a>
                        </div>
                        <a class="user_link" href="Profile.aspx">
                            <div class="user_icon">
                                <i class="fa-regular fa-user"></i>
                            </div>
                        </a>
                    </div>
                    <h2>Popular artists</h2>
                    <ul class="spotify artists">
                        <% 
                            if (Application[Global.Albums_List] != null)
                            {
                                List<Albums> albums = Application[Global.Albums_List] as List<Albums>;
                                if (albums.Count >= 12)
                                {
                                    for (int i = 6; i < 12; i++)
                                    {
                        %>
                        <a href="Music.aspx?artist=<%=albums[i].Name %>">
                            <li class="item">
                                <img src="<%= albums[i].Image %>" title="<%= albums[i].Name %>">
                                <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                                <h4 class="song"><%= albums[i].Name %></h4>
                                <p class="artist"><%= albums[i].Artist %></p>
                            </li>
                        </a>
                        <% 
                                    }
                                }
                            }
                        %>
                    </ul>
                    <h2>Popular Albums</h2>
                    <ul class="spotify albums">
                        <% 
                            if (Application[Global.Albums_List] != null)
                            {
                                List<Albums> albums = Application[Global.Albums_List] as List<Albums>;
                                if (albums.Count >= 6)
                                {
                                    for (int i = 0; i < 6; i++)
                                    {
                        %>
                        <a href="Music.aspx?album=<%=albums[i].Name %>">
                            <li class="item">
                                <img src="<%= albums[i].Image %>" title="<%= albums[i].Name %>">
                                <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                                <h4 class="song"><%= albums[i].Name %></h4>
                                <p class="artist"><%= albums[i].Artist %></p>
                            </li>
                        </a>
                        <% 
                                    }
                                }
                            }
                        %>
                    </ul>
                    <h2>Popular radio</h2>
                    <ul class="spotify radios">
                        <li class="item">
                            <img src="../Images/Radio0.jfif" alt="Taylor Swift Radio">
                            <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                            <h4>Taylor Swift Radio</h4>
                            <p>With Selene Gomez, Olivia Rodrigo, Katy...</p>
                        </li>
                    </ul>
                    <h2>Featured charts</h2>
                    <ul class="spotify charts">
                        <li class="item">
                            <img src="/Resources/Images/Chart1.jpg" alt="Top Songs - Global">
                            <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                            <h4>Top Songs - Global</h4>
                            <p>Your weekly update of the most played tracks...</p>
                        </li>
                    </ul>
                    <h2>Spotify Playlist</h2>
                    <ul class="spotify albums">
                        <li class="item">
                            <img src="/Resources/Images/Playlist1.jfif" alt="Top Songs - Global">
                            <div class="play-btn"><span><i class="fa-solid fa-play"></i></span></div>
                            <h4>lofi beats</h4>
                            <p>chill beats, lofi vibes, new tracks every week... </p>
                        </li>
                    </ul>
                    <div class="footer-section">
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
                        <div>
                            <p class="copyright">&copy; 2024 Spotify AB</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="preview signup-box">
            <div class="text">
                <h4>Preview of Spotify</h4>
                <p>Sign up to get unlimited songs and podcasts with occasional ads. No credit card needed.</p>
            </div>
            <button class="btn last-btn">Sign up for free</button>
        </div>
        <div class="preview music-box" style="display: none">
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
    <script src="../JavaScript/DataLocal.js"></script>
    <script src="../JavaScript/Liked.js"></script>
    <script>
        let active = document.querySelector(".active");
        let plus = document.querySelector(".plus");
        plus.addEventListener("click", function () {
            active.classList.toggle("show");
        })
        let Userid = JSON.parse(localStorage.getItem("UserID"));
        console.log(Userid);
        if (Userid) {
            document.querySelector(".button").style.display = "none";
            document.querySelector(".user_link").style.display = "block";            

        } else {
            document.querySelector(".button").style.display = "block";
            document.querySelector(".user_link").style.display = "none";
        }
    </script>
</body>
</html>
