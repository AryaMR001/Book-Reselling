using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View_ShoppingCart : System.Web.UI.Page
{
    Connect cn = new Connect();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        GridView1.DataSource = cn.fill("select b.Book_ID ,b.Bok_Name,b.Author_Name,b.Edition,b.Category,b.Publication,b.Price ,b.Book_Image from Book_Data b,Add_Cart a where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "' ");
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      /*  String pr = GridView1.Rows[].Cells[0].Text;
        cn.dml("delete Cart_ID,Book_ID,Reg_ID from Add_Cart where Book_ID='" + pr.ToString() + "'");*/
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}