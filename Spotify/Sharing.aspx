<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sharing.aspx.cs" Inherits="Spotify.Sharing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign up</title>
    <link rel="stylesheet" href="../CSS/signup.css" />
    <link rel="stylesheet" href="../CSS/StyleSheet1.css" />
    <link rel="stylesheet" href="../CSS/Music.css" />
    <link rel="stylesheet" href="../CSS/Responsive.css" />
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer" />
    <style>
        .login {
            margin-right: 20px;
            padding: 0;
            font-size: 100%;
            width: 770px;
            height: 615px;
        }

            form {
                padding: 0;
                background-color: none;
            }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="container">
            <div class="header-sidebar">
                <nav class="sidebar-nav">
                    <img src="../Images/Logo.png" alt="logo spotify">
                    <ul>
                        <li><a href="TrangChu.aspx"><i class="fa-solid fa-house"></i><span>Home</span><a href="TrangChu.aspx"></li>
                        <li style="color: #ffffff">
                            <i class="fa-solid fa-magnifying-glass"></i><span>Search</span>
                        </li>
                    </ul>
                </nav>
                <nav class="sidebar-nav box2">
                    <ul>
                        <li>
                            <div class="library"><i class=" fa-solid fa-book"></i><span>Your Library</span></div>
                        </li>
                        <div class="create">
                            <i class="fa-solid fa-plus plus"></i>
                            <p class="hover">Create playlist or folder</p>
                            <p class="active">Create a new playlist</p>
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
                        <a class="user_link" href="Profile.aspx">
                            <div class="user_icon">
                                <i class="fa-regular fa-user"></i>
                            </div>
                        </a>
                    </div>
                    <div class="sign_up">
                        <form runat="server" action="Sharing.aspx" method="post" enctype="multipart/form-data" id="form">
                            <h2>Music Sharing</h2>
                            <div>
                                <p>Song name</p>
                                <br />
                                <input type="text" id="share_song" name="share_song" class="share_song" placeholder="Song name" />
                            </div>
                            <div class="error error-songname"></div>
                            <div>
                                <p>Artist</p>
                                <br />
                                <input type="text" id="share_artist" name="share_artist" class="share_artist" placeholder="Arist" />
                            </div>
                            <div class="error error-artist"></div>
                            <div>
                                <p>Song image</p>
                                <br />
                                <input type="file" id="file_image" name="file_image" class="share_image" accept="image/*" />
                            </div>
                            <div class="error error-image"></div>
                            <div>
                                <p>Audio</p>
                                <br />
                                <input type="file" id="file_audio" name="file_audio" class="share_audio" accept="audio/*" />
                            </div>
                            <div class="error error-audio"></div>
                            <button type="submit" class="share_btn">Share</button>
                        </form>
                    </div>
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
    <script src="../JavaScript/Sharing.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var form = document.querySelector("form");
            form.onsubmit = function (e) {
                var songName = document.querySelector(".share_song").value;
                var artist = document.querySelector(".share_artist").value;
                var image = document.querySelector(".share_image").files.length;
                var audio = document.querySelector(".share_audio").files.length;

                if (!songName || !artist || image === 0 || audio === 0) {
                    e.preventDefault(); // Ngăn chặn form gửi nếu dữ liệu không hợp lệ
                    if (!songName) {
                        document.querySelector(".error-songname").textContent = "Please enter a song name.";
                    }
                    if (!artist) {
                        document.querySelector(".error-artist").textContent = "Please enter an artist name.";
                    }
                    if (image === 0) {
                        document.querySelector(".error-image").textContent = "Please upload a song image.";
                    }
                    if (audio === 0) {
                        document.querySelector(".error-audio").textContent = "Please upload an audio file.";
                    }
                }
            };
        });
    </script>
</body>
</html>
