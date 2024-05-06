// Lấy danh sách bài hát từ localStorage, nếu không có thì sử dụng một mảng trống
const songList = JSON.parse(localStorage.getItem("songs")) || [];
let UserID = JSON.parse(localStorage.getItem("UserID"));
let User = JSON.parse(localStorage.getItem("userStorage"));
const currentUser = User.find((user) => user.id === UserID);

// Get the liked albums of the current user or initialize an empty array
let User_SharingMusic= currentUser?.SharingMusic ?? [];
// Gắn sự kiện click cho nút chia sẻ
document.querySelector(".share_btn").addEventListener("click", (e) => {
    if (!UserID) {
        location.href = "TrangChu.aspx";
        return; // Stop further execution
    }
    else {
        let currentId = 1; // Mặc định ID là 1 nếu không có bài hát nào trong danh sách
        if (songList.length > 0) {
            currentId = parseInt(songList[songList.length - 1].id) + 1;
        }

        // Lấy giá trị từ các trường input
        let songName = document.getElementById("share_song").value;
        let artist = document.getElementById("share_artist").value;

        // Tạo đường dẫn cho hình ảnh và file âm thanh
        let imageName = `${songName}.jfif`;
        let imagePath = `../Images/${imageName}`;
        let audioName = `${songName}.mp3`;
        let audioPath = `../Musics/${audioName}`;
        let album = 'Your music';

        // Tạo đối tượng mới đại diện cho bài hát chia sẻ
        let newSong = {
            id: currentId,
            name: songName,
            artist: artist,
            album:album,
            image: imagePath,
            path: audioPath
        };

        // Thêm bài hát mới vào danh sách
        songList.push(newSong);

        // Lưu danh sách bài hát mới vào localStorage
        localStorage.setItem("songs", JSON.stringify(songList));

        // Hiển thị thông báo chia sẻ thành công
        alert("Chia sẻ thành công !");

        User_SharingMusic.push(songName);
        currentUser.SharingMusic = User_SharingMusic;

        // Update the userStorage in localStorage
        localStorage.setItem("userStorage", JSON.stringify(User));
    }
    
});
