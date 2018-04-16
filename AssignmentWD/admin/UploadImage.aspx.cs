using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWD.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/admin/ProductImages/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId = ".jpg";

            string savelocation = Server.MapPath("~/admin/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(savelocation);
        }
    }
}