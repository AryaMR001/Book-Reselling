using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Order_confirmation : System.Web.UI.Page
{
    Connect cn = new Connect();
    string datetime;
    double sub, ship, grand;
    protected void Page_Load(object sender, EventArgs e)
    {   
        cn.start();
        datetime = DateTime.Now.ToLongDateString();
        GridView1.DataSource = cn.fill("select b.Bok_Name,b.Author_Name,b.Price from Book_Data b,Add_Cart a where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "' ");
        GridView1.DataBind();
        if (GridView1.Rows.Count != 0)
        {
            lblgr.Visible = true;
            lblgrandtot.Visible = true;
            lblsh.Visible = true;
            lblship.Visible = true;
            lblshipping.Visible = true;
            lblsubtot.Visible = true;
            cn.dr = cn.read("select SUM(b.Price) from Book_Data b,Add_Cart a where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "'");
            if (cn.dr.Read())
            {
                lblsubtot.Text = cn.dr.GetValue(0).ToString();
                sub = Convert.ToDouble(lblsubtot.Text);
                Session["Sub_tot"] = sub;
                if (sub < 500)
                {
                    lblshipping.Text = "50";
                    ship = Convert.ToDouble(lblshipping.Text);

                }
                if ((sub >= 500 && sub <= 1000))
                {
                    lblshipping.Text = "30";
                    ship = Convert.ToDouble(lblshipping.Text);
                }
                if (sub > 1000)
                {
                    lblshipping.Text = "0";
                    ship = Convert.ToDouble(lblshipping.Text);
                }
                Session["Ship_Cost"] = ship;
                grand = ship + sub;
                lblgrandtot.Text = grand.ToString();
                Session["Grand_tot"] = grand;
            }

           
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
     
        Response.Redirect("Billing_Complete.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}