using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Spotify
{
    public class Global : System.Web.HttpApplication
    {
        public const string Albums_List = "Albums";
        public const string Albums_sharing = "albums_sharing";
        private List<Albums> createAlbumsList()
        {
            return new List<Albums> {
                new Albums{Id="1",Name="LOI CHOI: The Leo Pop Punk", Artist="Wren Evans", Image="../Images/loiChoi.jfif"},
                new Albums{Id="2",Name="99%", Artist="RPT MCK", Image="../Images/99percent.jfif"},
                new Albums{Id="3",Name="ái", Artist="tlinh", Image="../Images/ai.jfif"},              
                new Albums{Id="4",Name="22", Artist="MONO", Image="../Images/22.jfif"},
                new Albums{Id="5",Name="Ai Cũng Phải Bắt Đầu Từ Đâu Đó", Artist="HIEUTHUHAI", Image="../Images/aiCungPhai.jfif"},
                new Albums{Id="6",Name="Đẹp", Artist="MONO", Image="../Images/dep.jfif"},
                new Albums{Id="7",Name="Sơn Tùng M-TP", Artist="Artist", Image="../Images/sonTung.jfif"},
                new Albums{Id="8",Name="MONO", Artist="Artist", Image="../Images/mono.jfif"},
                new Albums{Id="9",Name="RPT MCK", Artist="Artist", Image="../Images/rptMck.jfif"},
                new Albums{Id="10",Name="tlinh", Artist="Artist", Image="../Images/tlinh.jfif"},
                new Albums{Id="11",Name="Wren Evans", Artist="Artist", Image="../Images/wrenEvans.jfif"},
                new Albums{Id="12",Name="HIEUTHUHAI", Artist="Artist", Image="../Images/HIEUTHUHAI.jfif"},
            };
        }
        protected void Application_Start(object sender, EventArgs e)
        {
            Application[Albums_List] = createAlbumsList();
            Application[Albums_sharing] = new List<shareMusic>();
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}