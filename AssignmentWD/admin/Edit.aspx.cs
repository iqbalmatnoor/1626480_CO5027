using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentWD.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/List.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/admin/ProductImages/" + fle.FileName + ".jpg"));
                Label li = (Label)FormView1.FindControl("Label1") as Label;
                li.Text = "~/admin/ProductImages/" + fle.FileName + ".jpg";
            }
        }
    }
}