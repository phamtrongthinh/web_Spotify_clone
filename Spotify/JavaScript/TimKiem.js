let songList = JSON.parse(localStorage.getItem("songs"));
let MTP = songList.filter(e => e.album == "Sơn Tùng M-TP");
console.log(MTP);
const doduLieu = (mang) => {
    let html = "";
    html = mang.map((e, i) => {
        return `<a href="Music.aspx?name=${e.name}">
                   <li class="item">
                      <img src="${e.image}" tiltle="${e.name}">
                      <h2>${e.name}</h2>
                      <p>${e.artist}</p>
                    </li>
                 </a>`;
    });
    document.querySelector(".albums").innerHTML= html.join("");
};
doduLieu(MTP);
let search_song = document.getElementById("search-text");
let search_btn = document.getElementById("search-btn");
let search_box = document.getElementById("search-box");
search_box.addEventListener("submit", (e) => {
    e.preventDefault();
    location.href = "TimKiem.aspx?name=" + search_song.value;
});
const paragram = new URLSearchParams(location.search);
const name = paragram.get("name");
let search_song_list = songList.filter((i) => {
    const nameUpper = name.toUpperCase();
    return i.name.toUpperCase().includes(nameUpper) || i.artist.toUpperCase().includes(nameUpper) || i.album.toUpperCase().includes(nameUpper);
});
let uniqueArray = search_song_list.filter((item, index, self) => {
    return (
        index === self.findIndex((t) => t.id === item.id || t.name === item.name)
    );
});

doduLieu(uniqueArray);