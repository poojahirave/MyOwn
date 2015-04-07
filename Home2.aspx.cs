using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics.PerformanceData;

public partial class Home2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session["uname1"] = txtUserName.Text;
        Label1.Visible = false;

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    

    protected void btnSignin_Click(object sender, EventArgs e)
    {

        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string query = "select UserName,Password from tbl_Registration";
        // string query = "select UserName,Password from tbl_Login";
        SqlCommand cmd1 = new SqlCommand(query, con);

        SqlDataReader dr = cmd1.ExecuteReader();


        while (dr.HasRows)
        {
            if (dr.Read())
            {

                if (txtUserName.Text == dr.GetValue(0).ToString() && txtPsswrd.Text == dr.GetValue(1).ToString())
                {
                    Session["uname1"] = txtUserName.Text;
                    Response.Redirect("RingtoneInterstitial.aspx");

                }

                else
                {

                    if (txtUserName.Text == "manish" && txtPsswrd.Text == "manish123")
                    {
                        Session["adminuname"] = txtUserName.Text;
                        Response.Redirect("Admin.aspx");
                        
                    }

                }
                 
            }
            else
            {
                Response.Redirect("Home2.aspx");
            }
           
        }



    }
    
}

            
  
