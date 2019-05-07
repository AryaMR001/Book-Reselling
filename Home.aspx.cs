using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Home : System.Web.UI.Page
{
    Connect cn = new Connect();
    int bid, count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        if (!IsPostBack)
        {
            DataList1.DataSource = cn.fill("select Distinct top 12 Bok_Name,Book_ID,Book_Image,Quantity,Price from Book_Data order by Book_ID desc ");
            DataList1.DataBind();
        }
            
        
       
    }
    protected void AddCart(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "Add")
        {
            bid = Convert.ToInt32(e.CommandArgument.ToString());
            Session["BID"] = bid.ToString();
            cn.dml("insert into Add_Cart(Book_ID,Reg_ID)values('" + Session["BID"].ToString() + "','" + Session["Reg_ID"].ToString() + "')");
            cn.dr = cn.read("select count(Book_ID) from Add_Cart where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
            if (cn.dr.Read())
            {
                count = Convert.ToInt32(cn.dr.GetValue(0).ToString());


            }
            txtcount.Text = count + "" + "Book(s)";
            count = count + 1;
            cn.dr.Close();
            cn.dr = cn.read("select SUM(b.Price) from Book_Data b,Add_Cart a where b.Book_ID=a.Book_ID AND a.Reg_ID='" + Session["Reg_ID"].ToString() + "'");
            if (cn.dr.Read())
            {
                txtprice.Text = cn.dr.GetValue(0).ToString();
            }
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtprice_TextChanged(object sender, EventArgs e)
    {

    }
}