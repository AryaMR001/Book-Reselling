using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class BookStore : System.Web.UI.MasterPage
{
    Connect cn = new Connect();
    string cat, search;


    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        //DataList1.Visible = true;
       // lblprint.Text = "WELCOME" +"    "+ Session["name"].ToString();
        if(! IsPostBack)
        {
            ddlcategory.Items.Clear();
            ddlcategory.Items.Add("Category");
            cn.dr = cn.read("select DISTINCT Category from Book_Data ");
            while(cn.dr.Read())
            {
                ddlcategory.Items.Add(cn.dr.GetValue(0).ToString());

            }
            cn.dr.Close();

        }

       

    }

    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
       cat = ddlcategory.SelectedItem.ToString();
        Session["category"] = cat;
       // Label1.Text = Session["category"].ToString();

        Response.Redirect("Category.aspx");


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
      
        search = txtsearch.Text.ToString();
        Session["search"] = search.ToString();
        Response.Redirect("Browse_Book.aspx");
    }
}
