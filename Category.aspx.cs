using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlTypes;
public partial class Category : System.Web.UI.Page
{
    Connect cn = new Connect();
    int bid, count, qty, new_qty;
    double price, sum = 0;
    string datetime, address, state, dist, phn, email;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        cn.dr = cn.read("select Address,State,District,Phnnumber,Email_ID from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if (cn.dr.Read())
        {
            address = cn.dr.GetValue(0).ToString();
            state = cn.dr.GetValue(1).ToString();
            dist = cn.dr.GetValue(2).ToString();
            phn = cn.dr.GetValue(3).ToString();
            email = cn.dr.GetValue(4).ToString();
        }
        cn.dr.Close();
        datetime = DateTime.Now.ToLongDateString();
        Label1.Text = "Books In Category"+ " "+ Session["category"].ToString();
        if (!IsPostBack) {
            DataList1.Visible = true;
            DataList1.DataSource = cn.fill("select  Bok_Name,Book_Image,Book_ID,Price from Book_Data where Category='" + Session["category"].ToString() + "'");
            DataList1.DataBind();
        }
            
    }

    protected void AddCart(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {
            bid = Convert.ToInt32(e.CommandArgument.ToString());
            Session["BID"] = bid.ToString();
            cn.dr = cn.read("select Quantity from Book_Data where Book_ID='" + Session["BID"].ToString() + "' ");
            if (cn.dr.Read())
            {
                qty = Convert.ToInt32(cn.dr.GetValue(0).ToString());
            }
            cn.dr.Close();
            if (qty > 0)
            {
                cn.dml("insert into Add_Cart(Book_ID,Reg_ID)values('" + Session["BID"].ToString() + "','" + Session["Reg_ID"].ToString() + "')");
                new_qty = qty - 1;
                cn.dml("insert into order_details (Date,Reg_ID,Book_ID,Ship_Address,District,State,PHN,email)values('" + datetime + "','" + Session["Reg_ID"].ToString() + "','" + Session["BID"].ToString() + "','" + address + "','" + dist + "','" + state + "','" + phn + "','" + email + "')");
                // cn.dml("insert into order_details(Date,Reg_ID,Book_ID)values('" + datetime + "','" + Session["Reg_ID"].ToString() + "','" + Session["BID"].ToString() + "')");
                cn.dml("update Book_Data set Quantity='" + new_qty + "' where Book_ID='" + Session["BID"].ToString() + "' ");
            }
            if (qty <= 0)
            {
                lblprint.Visible = true;
                lblprint.Text = "This Book Is Out Of Stock";
            }
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
            cn.dr.Close();
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}