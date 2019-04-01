using ASPFinal_MusicApp_cwolfgram1.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_MusicApp_cwolfgram1
{
    
    public partial class WebForm3 : System.Web.UI.Page
    {
        private MusicDbContext db = new MusicDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wishlist_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //change to owned
            if (e.CommandName == "Owned") {
                int index = Convert.ToInt32(e.CommandArgument);
                gvWishlist.SelectRow(index);

                string title = gvWishlist.SelectedRow.Cells[2].Text;
                string artist = gvWishlist.SelectedRow.Cells[3].Text;
                string format = gvWishlist.SelectedRow.Cells[4].Text;

                var currentRecord = db.PhysicalMusics.First(b => b.musicTitle == title && b.musicArtist == artist && b.musicFormat == format && b.musicWant == true);

                while (currentRecord != null)
                {

                    currentRecord.musicOwned = true;
                    currentRecord.musicWant = false;
                    db.SaveChanges();

                    gvWishlist.DataBind();

                    try
                    {
                        currentRecord = db.PhysicalMusics.First(b => b.musicTitle == title && b.musicArtist == artist && b.musicFormat == format && b.musicWant == true);
                    }
                    catch (InvalidOperationException ex)
                    {
                        currentRecord = null;
                    }

                    
                }

            }
            //Delete from db and update gridview
            else if (e.CommandName == "Delete!")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                gvWishlist.SelectRow(index);

                string title = gvWishlist.SelectedRow.Cells[2].Text;
                string artist = gvWishlist.SelectedRow.Cells[3].Text;
                string format = gvWishlist.SelectedRow.Cells[4].Text;

                var currentRecord = db.PhysicalMusics.Where(b => b.musicTitle == title && b.musicArtist == artist && b.musicFormat == format && b.musicWant == true);

                if (currentRecord != null)
                {

                    db.PhysicalMusics.RemoveRange(currentRecord);
                    db.SaveChanges();

                    gvWishlist.DataBind();
                }
                


            }
            

        }
    }
}