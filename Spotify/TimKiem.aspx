<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="Spotify.TimKiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Tim Kiem</title>
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../CSS/StyleSheet1.css" />
    <link rel="stylesheet" href="../CSS/TimKiem.css" />
     <link rel="stylesheet" href="../CSS/Responsive.css" />
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="header-sidebar">
                <nav class="sidebar-nav">
                    <img src="../Images/Logo.png" alt="logo spotify"/>
                    <ul>
                        <li><a href="TrangChu.aspx"><i class="fa-solid fa-house"></i><span>Home</span></a></li>
                        <li style="color: #ffffff">
                            <i class="fa-solid fa-magnifying-glass"></i><span>Search</span>
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
                    <div class="top-nav">
                        <div class="prev-btn">
                            <button><i style="color: #ffffff" class="fa-solid fa-chevron-left"></i></button>
                            <button><i class="fa-solid fa-chevron-right"></i></button>
                        </div>
                        <form action="" id="search-box">
                            <button id="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
                            <input type="text" placeholder="What do you want to play?" id="search-text">
                        </form>
                        <a class="user_link" href="Profile.aspx">
                            <div class="user_icon">
                                <i class="fa-regular fa-user"></i>
                            </div>
                        </a>
                    </div>
                    <h2>Browse all</h2>
                    <ul class="spotify albums search_music">
                        <li class="item">
                            <img src="../Images/chungTaCuaTuongLai.jfif" alt="Podcasts">
                            <h2>Chúng ta của tương lai</h2>
                            <p>Sơn Tùng M-TP</p>
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
        <div class="preview">
            <div class="text">
                <h4>Preview of Spotify</h4>
                <p>Sign up to get unlimited songs and podcasts with occasional ads. No credit card needed.</p>
            </div>
            <button class="btn last-btn">Sign up for free</button>
        </div>
    </div>
    <script src="../JavaScript/Liked.js"></script>
        <script src="../JavaScript/TimKiem.js"></script>
    <script>
        let active = document.querySelector(".active");
        let plus = document.querySelector(".plus");
        plus.addEventListener("click", function () {
            active.classList.toggle("show");
        })

        document.getElementById('search-text').addEventListener('focus', function () {
            document.getElementById('search-box').style.backgroundColor = 'rgb(44, 44, 44)';
            document.getElementById('search-text').style.backgroundColor = 'rgb(44, 44, 44)';
            document.getElementById('search-btn').style.backgroundColor = 'rgb(44, 44, 44)';
        });

        document.getElementById('search-text').addEventListener('blur', function () {
            document.getElementById('search-box').style.backgroundColor = '#242323';
        });
    </script>
</body>
</html>
