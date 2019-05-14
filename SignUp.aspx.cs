using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();
       
    }
    string Address, g,Fullname;
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        if(rdbtnFemale.Checked)
        {
            g = rdbtnFemale.Text.ToString();
        }
        else
        {
            g = rdbtnMale.Text.ToString();
        }
        Address = txtHname.Text.ToString() + " " + txtSname.Text.ToString() + "" + txtPin.Text.ToString();
        Fullname = txtName.Text.ToString() + "" + txtLastName.Text.ToString();
        cn.dml("insert into Sign_UP(Name,Gender,Address,Phnnumber,State,District,Email_ID,User_Name,Password)values('" + Fullname + "','" + g + "','" + Address + "','" + txtMobno.Text.ToString() + "','" + ddlstate.SelectedValue.ToString() + "','" + ddldistrict.SelectedValue.ToString() + "','" + txtemail.Text.ToString() + "','" + txtxUname.Text.ToString() + "','" + txtPassword.Text.ToString() + "')");
        Response.Write("<script>alert('Your Registration Is Sucessfully Completed');window.location='HomePage.aspx';</script>");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = " ";
    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstate.SelectedItem.Text == "Select")
        {
            // Label12.Visible = true;
            Label12.Text = "Select valid state";
            ddldistrict.Items.Clear();
            ddldistrict.Items.Add("--District--");
        }
        else
        {
            ddldistrict.Items.Clear();
            ddldistrict.Items.Add("--District--");
            if (ddlstate.SelectedItem.Text == "Kerala")
            {
                ddldistrict.Items.Add("Thiruvananthapuram");
                ddldistrict.Items.Add("Kollam");
                ddldistrict.Items.Add("Pathanamnthitta");
                ddldistrict.Items.Add("Alappuzha");
                ddldistrict.Items.Add("Kottayam");
                ddldistrict.Items.Add("Idukki");
                ddldistrict.Items.Add("Ernakulam");
                ddldistrict.Items.Add("Thrissur");
                ddldistrict.Items.Add("Palakkad");
                ddldistrict.Items.Add("Malappuram");
                ddldistrict.Items.Add("Kozhikkodu");
                ddldistrict.Items.Add("Wayanadu");
                ddldistrict.Items.Add("Kannur");
                ddldistrict.Items.Add("Kasargodu");
            }
            else if (ddlstate.SelectedItem.Text == "Tamil Nadu")
            {

                ddldistrict.Items.Add("Ariyalur");
                ddldistrict.Items.Add("Chennai");
                ddldistrict.Items.Add("Coimbatore");
                ddldistrict.Items.Add("Cuddalore");
                ddldistrict.Items.Add("Dharmapuri");
                ddldistrict.Items.Add("Kanchipuram");
                ddldistrict.Items.Add("Kanniyakumari");
                ddldistrict.Items.Add("Madurai");
                ddldistrict.Items.Add("Nagapattinam");
                ddldistrict.Items.Add("Salem");


            }
            else if (ddlstate.SelectedItem.Text == "Karnataka")
            {

                ddldistrict.Items.Add("Bagalkot");
                ddldistrict.Items.Add("Bengaluru Rural");
                ddldistrict.Items.Add("Bellary");
                ddldistrict.Items.Add("Bijapur");
                ddldistrict.Items.Add("Chamarajanagar");
                ddldistrict.Items.Add("Chikballapur");
                ddldistrict.Items.Add("Dakshina Kannada");
                ddldistrict.Items.Add("Dharwad");
                ddldistrict.Items.Add("Hassan");
                ddldistrict.Items.Add("Kolar");


            }
            else if (ddlstate.SelectedItem.Text == "Anthrapredesh")
            {

                ddldistrict.Items.Add("Anantapur");
                ddldistrict.Items.Add("Chittoor");
                ddldistrict.Items.Add("East Godavari");
                ddldistrict.Items.Add("Guntur");
                ddldistrict.Items.Add("Kadapa");
                ddldistrict.Items.Add("Krishna");
                ddldistrict.Items.Add("Kurnool");
                ddldistrict.Items.Add("Srikakulam");
                ddldistrict.Items.Add("Visakhapatnam");
                ddldistrict.Items.Add("West Godavari");


            }
            else if (ddlstate.SelectedItem.Text == "Maharashtra")
            {

                ddldistrict.Items.Add("Pune");
                ddldistrict.Items.Add("Solapur");
                ddldistrict.Items.Add("Kolhapur");
                ddldistrict.Items.Add("Nashik");
                ddldistrict.Items.Add("Chandrapur");
                ddldistrict.Items.Add("Mumbai City");
                ddldistrict.Items.Add("Akola");
                ddldistrict.Items.Add("Mumbai Suburban");



            }

        }

    }
}