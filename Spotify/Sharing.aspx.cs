using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class Sharing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kiểm tra xem có phải là postback từ form không
            if (IsPostBack)
            {
                // Lấy dữ liệu từ form
                string songName = Request.Form["share_song"];
                string artist = Request.Form["share_artist"];
                HttpPostedFile fileImage = Request.Files["file_image"];
                HttpPostedFile fileAudio = Request.Files["file_audio"];

                // Lấy danh sách album từ Application
                List<shareMusic> albumsList = Application[Global.Albums_sharing] as List<shareMusic>;

                // Kiểm tra và khởi tạo danh sách nếu cần
                if (albumsList == null)
                {
                    albumsList = new List<shareMusic>();
                }

                // Tạo một đối tượng album mới
                shareMusic album = new shareMusic();
                album.Name = songName;
                album.Artist = artist;

                try
                {
                    // Lưu file ảnh
                    string fileNameImage = songName + ".jfif";
                    string pathNameImage = Server.MapPath("~/Images/");
                    string savePathImage = Path.Combine(pathNameImage, fileNameImage);
                    fileImage.SaveAs(savePathImage);

                    // Lưu file âm thanh
                    string fileNameAudio = songName + ".mp3";
                    string pathNameAudio = Server.MapPath("~/Musics/");
                    string savePathAudio = Path.Combine(pathNameAudio, fileNameAudio);
                    fileAudio.SaveAs(savePathAudio);

                    // Cập nhật đường dẫn ảnh và âm thanh cho album
                    album.Image = "../Images/" + fileNameImage;
                    album.Path = "../Musics/" + fileNameAudio;

                    // Thêm album vào danh sách
                    albumsList.Add(album);
                    Application[Global.Albums_sharing] = albumsList;

                    Response.Write("Thêm album thành công: " + songName);
                    Response.Redirect("Profile.aspx");
                    
                }
                catch (Exception ex)
                {
                    Response.Write("Lỗi khi thêm album: " + ex.Message);
                }
            }
        }
    }
}