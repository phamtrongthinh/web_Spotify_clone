// Lấy danh sách bài hát từ localStorage
let songList1 = JSON.parse(localStorage.getItem("songs"));
// Lấy UserID từ localStorage
let UserID1 = JSON.parse(localStorage.getItem("UserID"));
// Lấy dữ liệu người dùng từ localStorage
let User1 = JSON.parse(localStorage.getItem("userStorage"));

// Tìm người dùng hiện tại dựa trên ID người dùng đã đăng nhập
const currentUser1 = User1.find((user) => user.id === UserID1);

// Lấy danh sách album được yêu thích của người dùng hiện tại hoặc khởi tạo một mảng rỗng
let User_LikedAlbums1 = currentUser1?.LikedAlbums ?? [];

console.log(User_LikedAlbums1);

// Hàm để đổ dữ liệu vào HTML
const doduLieu1 = () => {
    let html = "";
    // Tạo HTML cho mỗi album được yêu thích
    html = User_LikedAlbums1.map((album, index) => {
        return ` <a href="Music.aspx?album=${album}" class="liked-item">
                    <span>${index + 1}</span>
                    <p>${album}. Album</p>
                    <i class="fa-regular fa-heart"></i>
                </a>`;
    });
    // Chèn HTML vào phần tử có lớp là "liked-albums"
    document.querySelector(".liked-albums").innerHTML = html.join("");
};

// Kiểm tra nếu có dữ liệu người dùng, thực hiện đổ dữ liệu
if (User_LikedAlbums1) {
    doduLieu1();
} else {
    // Nếu không có dữ liệu người dùng, hiển thị một album mẫu
    document.querySelector(".liked-albums").innerHTML = `
        <div class="liked-item">
            <span>1</span>
            <p>LOI CHOI . Album</p>
            <i class="fa-regular fa-heart"></i>
        </div>`;
}
localStorage.removeItem("playlist");


/*likedSongList.forEach(e => e.album = "playlist")
localStorage.setItem("playlist", JSON.stringify(likedSongList));*/
//Đổ dữ liệu cho profile
let uniqueAlbumNames = new Set();

// Iterate through songList1 to collect unique album names
songList1.forEach(e => {
    uniqueAlbumNames.add(e.album);
});


