using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Shopping_Cart : System.Web.UI.Page
{
    Connect cn = new Connect();
    double sub, ship, grand;
    protected void Page_Load(object sender, EventArgs e)
    {  
       cn.start();
       GridView1.DataSource = cn.fill("select a.Cart_ID ,b.Bok_Name,b.Author_Name,b.Edition,b.Category,b.Publication,b.Price ,b.Book_Image from Add_Cart a,Book_Data b where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "' ");
       GridView1.DataBind();
        /*put if condition whether grid view is empty*/
        if(GridView1.Rows.Count==0)
        {
          //  lblempty.Visible = true;
            lblempty.Text = "bn";
        }
        if (GridView1.Rows.Count >= 1)
        {
            lblsh.Visible = true;
            lblgr.Visible = true;
            lblgrand.Visible = true;
            lblshippingcost.Visible = true;
            lblsub.Visible = true;
            lblsubtot.Visible = true;
            cn.dr = cn.read("select SUM(b.Price) from Book_Data b,Add_Cart a where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "'");
            if (cn.dr.Read())
            {   
                lblsubtot.Text = cn.dr.GetValue(0).ToString();
                sub = Convert.ToDouble(lblsubtot.Text);
              //  Session["Sub_tot"] = sub;
                if (sub < 500)
                {
                    lblshippingcost.Text = "50";
                    ship = Convert.ToDouble(lblshippingcost.Text);

                }
                if ((sub >= 500 && sub <= 1000))
                {
                    lblshippingcost.Text = "30";
                    ship = Convert.ToDouble(lblshippingcost.Text);
                }
                if (sub > 1000)
                {
                    lblshippingcost.Text = "0";
                    ship = Convert.ToDouble(lblshippingcost.Text);
                }
               // Session["Ship_Cost"] = ship;
                grand = ship + sub;
                lblgrand.Text = grand.ToString();
               // Session["Grand_tot"] = grand;

            }
        }
        cn.dr.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void deleted(object sender, GridViewDeleteEventArgs e)
    {
        Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblcartid");
        cn.dml("delete from Add_Cart where Cart_ID='" + lbldeleteID.Text + "'");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.dml("delete from Add_Cart where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
    }
}