//ASP Final Music Inventory App
//By: Conor Wolfgram
//12-14-2018

using ASPFinal_MusicApp_cwolfgram1.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_MusicApp_cwolfgram1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //Db context
        private MusicDbContext db = new MusicDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Setting entries text
            if (Session["numEntries"] != null)
            {
                entries.InnerText = "There has been " + Session["numEntries"] + " entries this session.";
            }
            else
            {
                entries.InnerText = "There have been no entries during this session.";
            }

            

        }

        protected void btnSubmit_click(object sender, EventArgs e)
        {
            //Submit new music
            PhysicalMusic newMusic = new PhysicalMusic();

            newMusic.musicTitle = txtTitle.Text;
            newMusic.musicArtist = txtArtist.Text;
            newMusic.musicGenre = txtGenre.Text;
            newMusic.musicYear = Convert.ToInt32(txtYear.Text);
            newMusic.musicFormat = txtFormat.Text;

            if (rblState.Items[0].Selected)
            {
                newMusic.musicOwned = true;
                newMusic.musicWant = false;
            } else
            {
                newMusic.musicOwned = false;
                newMusic.musicWant = true;
            }

            db.PhysicalMusics.Add(newMusic);
            db.SaveChanges();

            if (newMusic.musicOwned)
            {
                success.InnerText = "Item successfully added to inventory.";
            } else
            {
                success.InnerText = "Item successfully added to wishlist.";
            }

            txtTitle.Text = "";
            txtArtist.Text = "";
            txtFormat.Text = "";
            txtGenre.Text = "";
            txtYear.Text = "";
            rblState.ClearSelection();

            //Editing entries session object
            if (Session["numEntries"] != null)
            {
                Session["numEntries"] = Convert.ToInt32(Session["numEntries"]) + 1;
            } else
            {
                Session["numEntries"] = 1;
            }

            entries.InnerText = "There has been " + Session["numEntries"] + " entries this session.";

        }

    }
}