// Lấy ra mảng nhạc từ local storage
let songList = JSON.parse(localStorage.getItem("songs"));
let playlist = JSON.parse(localStorage.getItem("playlist"));
console.log(playlist);
// Lấy ra tên album từ URL trên thanh tìm kiếm
const paragram = new URLSearchParams(location.search);
const album = paragram.get("album");
const artist = paragram.get("artist");
const name = paragram.get("name");
let songs = [];
if (album != null) {
    // Từ tên album lấy ra những bài hát trong album
    console.log("ở album");
    if (album == "playlist") {
        songs = playlist.filter(e => {
            return e.album == album;
        });
    }
    else {
        songs = songList.filter(e => {
            return e.album == album;
        });
    }
} else if (name != null) {
    console.log("ở name");
    songs = songList.filter(e => {
        return e.name == name;
    });
} else if (artist != null) {
    console.log("ở artist");
    songs = songList.filter(e => {
        return e.artist.includes(artist);
    });
}


// Tiến hành đổ dữ liệu cho trang
document.querySelector(".Music-play img").src = songs[0].image;
document.querySelector(".play-song img").src = songs[0].image;
document.querySelector(".Music-play h2").innerHTML = songs[0].album;
document.querySelector(".play-song h5").innerHTML = songs[0].name +
    `<br>
  <p class="subtitle">${songs[0].artist}</p>`;;
// Đổ dữ liệu cho danh sách bài hát
const doduLieu = () => {
    let html = "";
    html = songs.map((e, i) => {
        return `<li class="songItem">
                    <span class="playListPlay soTT" id="1">${i + 1}</span>
                    <img src="${e.image}">
                    <h5 class="songname">${e.name}</h5>
                    <p class="artist">${e.artist}</p>
                    <div class="like-btn"><i class="fa-regular fa-heart"></i></div>
                    <span class="songtime">2:14</span>
                </li>`;
    });
    document.querySelector(".playlist-song").innerHTML =
        `<li style="margin-bottom:-20px; color:#a7a7a7; font-size:120%">
            <span>#</span>
            <h5 >Title</h5>
            <p class="artist">Artist</p>
            <div style="opacity:1" class="like-btn">Like</i></div>
            <span class="songtime">Time</span>
        </li>
        <hr>` + html.join("");
};
doduLieu();
//Hàm định dạng thời gian-------------------------------
const formatTime = (time) => {
    let min = Math.floor(time / 60);
    if (min < 10) {
        min = `0${min}`;
    }
    let sec = Math.floor(time % 60);
    if (sec < 10) {
        sec = `0${sec}`;
    }
    return `${min}:${sec}`;
};
const formatTime2 = (time) => {
    let min = Math.floor(time / 60);
    if (min < 10) {
        min = `0${min}`;
    }
    let sec = Math.floor(time % 60);
    if (sec < 10) {
        sec = `0${sec}`;
    }
    return `${min} min ${sec} sec`;
};
//Xử lý gán thời gian cho từng bài hát--------------------------------------------------------------------
let loadedCount = 0;
let totalDuration = 0;
// Lặp qua mỗi phần tử trong mảng .songItem
Array.from(document.querySelectorAll(".songItem")).forEach((e, i) => {
    const music = new Audio(songs[i].path); // Tạo một audio element mới cho mỗi bài hát
    music.addEventListener("loadedmetadata", () => {
        totalDuration += music.duration;
        // Sự kiện xảy ra khi metadata của audio đã được tải xong
        e.getElementsByClassName("songtime")[0].innerHTML = formatTime(
            music.duration
        ); // Lấy thời lượng của audio và cập nhật UI
        loadedCount++; // Tăng biến đếm
        if (loadedCount === songs.length) {
            document.querySelector(".Music-play .describe").innerHTML = `${songs[0].artist
                } . 2023. ${songs.length} songs, ${formatTime2(totalDuration)} `;
        }
    });
});
//Xử lý trình phát nhạc
//sử dụng DOM để lấy ra các đối tượng của trình phát nhạc
const music = document.querySelector("#audio");
const seekbar = document.querySelector(".seek-bar");
const songname = document.querySelector(".play-songname");
const currenttime = document.querySelector(".current-time");
const musictime = document.querySelector(".music-time");

//1-Hàm setSong được gọi để gán path cho audio src
const setSong = (i) => {
    document.querySelector(".play-song img").src = songs[i].image;
    songname.innerHTML =
        songs[i].name +
        `<br>
  <p class="subtitle">${songs[i].artist}</p>`;
    //Gán src cho audio từng bài hát theo chỉ số được truyền vào
    music.src = songs[i].path;

    music.play();           //Phát nhạc
    volumn.value = 100;
    setTimeout(() => {
        musictime.innerHTML = formatTime(music.duration);
        seekbar.max = music.duration; // Đặt giá trị max của seekbar
    }, 300);
    setInterval(() => {
        seekbar.value = music.currentTime; // Cập nhật giá trị của seekbar theo thời gian hiện tại của bài hát
        currenttime.innerHTML = formatTime(music.currentTime);
        if (Math.floor(music.currentTime) == Math.floor(seekbar.max)) {
            btnnext.click();
        }
    }, 500);
    seekbar.addEventListener("input", () => {
        music.currentTime = seekbar.value; // Đặt thời gian hiện tại của bài hát theo giá trị của seekbar khi người dùng kéo
    });
};
//2-Thực hiện truyền đối số cho hàm setSong khi người dùng click vào bài hát
let index = 0;//vị trí ban đầu mặc định là 0
let currentSong = 0;//Bài bát hiện tại mặc định là 0
//Hàm này dùng DOM lấy ra tất cả các class songName(tên nhạc) sau đó ép chúng về array và duyệt qua bằng forEach
Array.from(document.querySelectorAll(".songItem .songname")).forEach((e, i) => {
    e.addEventListener("click", () => {     //Sự kiện khi người dùng click vào tên bài hát
        index = i;                          //Trả về index sẽ là vị trí của bài hát theo mảng songName
        songs.forEach((e, i) => {           //Tiếp tục duyệt qua mảng nhạc tổng đã lấy bên trên
            if (index == i) {               //Tìm vị trí của bài nhạc bằng index vừa lấy ra
                setSong(i);                 //tiến hành truyền đối số cho hàm setSong theo index phù hợp
                currentSong = i;            //gán lại vị trí của bài nhạc hiện tại sẽ là i
            }
        });
    });
});
//Tiếp tục xử lý sự kiên click cho từng nút của trình phát nhạc
const btnplay = document.querySelector(".btn-play");
const btnback = document.querySelector(".btnback");
const btnnext = document.querySelector(".btnnext");
const volumn = document.querySelector(".volumn");
//Nút plays tổng
document
    .querySelector(".playlist-button .play-btn")
    .addEventListener("click", () => {
        setSong(0);
    });
//nút pause và play
btnplay.addEventListener("click", () => {
    if (btnplay.className.includes("pause")) {
        music.play();
    } else {
        music.pause();
    }
    btnplay.classList.toggle("pause");
});
//nút next
btnnext.addEventListener("click", () => {
    if (currentSong >= songs.length - 1) {
        currentSong = 0;
    } else {
        currentSong++;
    }
    setSong(currentSong);
});
//nút back
btnback.addEventListener("click", () => {
    if (currentSong <= 0) {
        currentSong = songs.length - 1;
    } else {
        currentSong--;
    }
    setSong(currentSong);
});
//nút tăng giảm âm lượng
volumn.addEventListener("change", () => {
    if (volumn.value == 0) {
        document.getElementById("vol-icon").classList.remove("fa-volume-low");
        document.getElementById("vol-icon").classList.remove("fa-volume-high");
        document.getElementById("vol-icon").classList.add("fa-volume-off");
    }
    if (volumn.value > 0) {
        document.getElementById("vol-icon").classList.add("fa-volume-low");
        document.getElementById("vol-icon").classList.remove("fa-volume-high");
        document.getElementById("vol-icon").classList.remove("fa-volume-off");
    }
    if (volumn.value > 50) {
        document.getElementById("vol-icon").classList.remove("fa-volume-low");
        document.getElementById("vol-icon").classList.add("fa-volume-high");
        document.getElementById("vol-icon").classList.remove("fa-volume-off");
    }
    music.volume = volumn.value / 100;
});
//-------------------------------Xử lý buton like------------------------------//
//xử lý album yêu thích
let likedAlbums = JSON.parse(localStorage.getItem("likedAlbums")) ?? [];
document
    .querySelector(".playlist-button .like-btn")
    .addEventListener("click", () => {
        if (likedAlbums.includes(album)) {
            likedAlbums = likedAlbums.filter((i) => {
                return i != album;//kiểm tra nếu có album này trong danh sách rồi thì xóa nó đi
            });
        } else {
            likedAlbums.push(album);//nếu chưa có thì push nó vào
        }
        localStorage.setItem("likedAlbums", JSON.stringify(likedAlbums));//Tiến hành lưu lên localStorage để sự dụng chung cho các trang
        location.reload();
    });
//Xử lý bài hát iêu thích
let likedSongs = JSON.parse(localStorage.getItem("likedSongs")) ?? [];
Array.from(document.querySelectorAll(".songItem .like-btn")).forEach((e, m) => {
    e.addEventListener("click", () => {
        let index = m; // Khai báo index trong phạm vi của hàm này
        songs.forEach((e, i) => {
            if (index == i) {
                if (likedSongs.includes(songs[i].id)) {
                    likedSongs = likedSongs.filter((id) => id != songs[i].id);
                } else {
                    likedSongs.push(songs[i].id);
                }
                localStorage.setItem("likedSongs", JSON.stringify(likedSongs));
            }
        });
    });
});