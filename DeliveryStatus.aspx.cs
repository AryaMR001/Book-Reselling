using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DeliveryStatus : System.Web.UI.Page
{
    Connect cn = new Connect();
    string new_status;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        if (rbtnpacked.Checked)
        {
            new_status = rbtnpacked.Text.ToString();
        }
        if(rbtndelivered.Checked)
        {
            new_status = rbtndelivered.Text.ToString();
        }
        else
        {
            new_status = rbtncomplete.Text.ToString();
        }
            if (!IsPostBack)
        {
            ddlid.Items.Clear();
            ddlid.Items.Add("ID");
            cn.dr = cn.read("select DISTINCT o.Reg_ID  from order_details o, Book_Data b where b.Book_ID=o.Book_ID AND b.Reg_ID='"+Session["Reg_ID"].ToString()+"'");
            while (cn.dr.Read())
            {
                ddlid.Items.Add(cn.dr.GetValue(0).ToString());

            }
            cn.dr.Close();
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.dml("update order_details set Status='" + new_status + "' where Reg_ID='"+ddlid.SelectedItem.ToString()+"'");
        lblprint.Visible = true;
        lblprint.Text = "New Staus Set Sucessfully";
    }
}