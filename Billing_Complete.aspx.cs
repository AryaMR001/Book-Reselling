using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Billing_Complete : System.Web.UI.Page
{
    Connect cn = new Connect();
    double balance, tot, new_balance, count, admin;
    
    protected void Page_Load(object sender, EventArgs e)

    {
        cn.start();
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.dr = cn.read("select Name,Address,State,District,Phnnumber,Email_ID from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if(cn.dr.Read())
        {   
            lblname.Text = cn.dr.GetValue(0).ToString();
            lbladdress.Text = cn.dr.GetValue(1).ToString();
            lblstate.Text = cn.dr.GetValue(2).ToString();
            lbldist.Text = cn.dr.GetValue(3).ToString();
            lblphn.Text = cn.dr.GetValue(4).ToString();
            lblemail.Text = cn.dr.GetValue(5).ToString();
        }
        cn.dr.Close();
        cn.dr = cn.read("select Order_ID,Date from order_details where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if(cn.dr.Read())
        {
            lblorderid.Text = cn.dr.GetValue(0).ToString();
            lbldate.Text = cn.dr.GetValue(1).ToString();
        }
        cn.dr.Close();
        lblsubtot.Text = Session["Sub_tot"].ToString();
        lblshipping.Text = Session["Ship_Cost"].ToString();
        lbltot.Text = Session["Grand_tot"].ToString();
        tot = Convert.ToDouble(lbltot.Text);
        cn.dr = cn.read("select Balance from Bank where cvv=928");
        if(cn.dr.Read())
        {
            admin = Convert.ToDouble(cn.dr.GetValue(0).ToString());
        }
        cn.dr.Close();
    }

    protected void btnpay_Click(object sender, EventArgs e)
    {

        cn.dr = cn.read("select * from Bank where Account_no='" + txtcardnum.Text + "' AND cvv='" + txtcvv.Text + "' AND Expired_Month='" + ddlmonth.SelectedItem.ToString() + "' AND Expired_Year='" + ddlyear.SelectedItem.ToString() + "'");
        if (cn.dr.Read())
        {

            lblprint.Text = cn.dr.GetValue(4).ToString();
            balance = Convert.ToDouble(lblprint.Text);
            
            if (balance >= tot)//check you have enough balance
            {
                // count = 1;
                new_balance = balance - tot;
                Session["new_balance"] = new_balance;
               //decrement balance                      
              //  Response.Redirect("Bill-export.aspx");


            }
        else
        {
            lblprint.Visible = true;
            lblprint.Text = "You Have No Enough Balance For The Payment";

        }
           
        }
        else
        {
           // count = 0;
            lblprint.Visible = true;
            lblprint.Text = "Invalid Card Details";
            lblsample.Text = "Wait For Payment";


        }
        cn.dr.Close();
        if (chkbox.Checked == false)
        {
            lblcheck.Visible = true;
            lblcheck.Text = "Please check your payment policy and procedures";
        }
        if (balance >= tot)
        {
              admin = admin + tot;
              cn.dml("update Bank set Balance='" + admin+ "' where cvv=928");//check
              cn.dml("update Bank set Balance='" + new_balance + "' where Account_no='" + txtcardnum.Text + "'");
              cn.dml("update order_details set Status='Payment Completed' where Reg_ID='"+ Session["Reg_ID"].ToString() + "'");//set status in order_details
              cn.dml("delete from Add_Cart where Reg_ID='" + Session["Reg_ID"].ToString() + "'");//delete cart
              Response.Redirect("Bill-export.aspx");

        }

        else
        {
            cn.dml("update order_details set Status='Wait For Payment' where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        }
    }
    
   


    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cancel-next.aspx");
        cn.dml("update order_details set Status='Waiting For Payment'");
    }
}

