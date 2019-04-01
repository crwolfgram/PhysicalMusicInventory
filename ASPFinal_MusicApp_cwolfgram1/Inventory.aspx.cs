using ASPFinal_MusicApp_cwolfgram1.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_MusicApp_cwolfgram1
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        private MusicDbContext db = new MusicDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Owned_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Delete from db and update gridview
             if (e.CommandName == "Delete!")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                gvInventory.SelectRow(index);

                string title = gvInventory.SelectedRow.Cells[1].Text;
                string artist = gvInventory.SelectedRow.Cells[2].Text;
                string format = gvInventory.SelectedRow.Cells[3].Text;

                var currentRecord = db.PhysicalMusics.Where(b => b.musicTitle == title && b.musicArtist == artist && b.musicFormat == format && b.musicOwned == true);

                if (currentRecord != null)
                {

                    db.PhysicalMusics.RemoveRange(currentRecord);
                    db.SaveChanges();

                    gvInventory.DataBind();
                }

            }


        }
    }
}