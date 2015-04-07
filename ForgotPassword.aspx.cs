using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    string pwd = "";
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        string query = "select Password from tbl_Registration where EmailId='" + txteid.Text + "' ";

        SqlCommand cmd = new SqlCommand(query, con);


        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Label1.Text = dr.GetValue(0).ToString();


        }

        pwd = Label1.Text;



        //con.Close();
        SendEmailTo();

       

        
       // return result;
    }
    public bool SendEmailTo()
    {

        System.Net.Mail.MailMessage Mailmessage = new System.Net.Mail.MailMessage();
        //insMail.From = "dewi@bis.com.sg";
        Mailmessage.From = new MailAddress("pooja.hirave@gmail.com");
        //if (EmailTo != "")
        //{
        Mailmessage.To.Add(txteid.Text);
        //Mailmessage.To.Add(to);
        Mailmessage.Subject = "hi";
        Mailmessage.IsBodyHtml = true;
      //  Mailmessage.BodyFormat = System.Web.Mail.MailFormat.Html;
        String strmsgbody = "<html><body><font color=\"blue\"><b> Hello  " + "pooja" + ",</b><br/> <b> " + "Your Password is-" + ",'" + pwd + "', </b> <br/> <br/>Regards<br/>LLC.</font></body></html>";

        Mailmessage.Body = strmsgbody;

        System.Net.Mail.SmtpClient smtp = new SmtpClient("smtp.gmail.com");
       // smtp.Port = 25;
        smtp.Credentials = new System.Net.NetworkCredential("pooja.hirave@gmail.com", "");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        try
        {
            smtp.Send(Mailmessage);
            return (true);
        }
        catch (Exception ex)
        {
            return (false);
           
        }
        finally
        {
            Mailmessage.Dispose();
        }
        //}
        //else
        //{
        //    return (false);
        //}

    }
}

