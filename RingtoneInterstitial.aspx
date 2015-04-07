<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RingtoneInterstitial.aspx.cs" Inherits="RingtoneInterstitial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Phonezoo</title>
    <link href="Style/Home2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Main">
        <div id="header">
            <asp:Image ID="imgLogo" runat="server" 
                ImageUrl="~/Images/phonezoo-logo (2).png" Height="112px">
            </asp:Image>
            <div id="Header-Login">
                <br />
                <asp:Label ID="lblplze" runat="server" Text="Please Sign in:" Style="margin-left: 5px;"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName" BorderColor="#0066FF"
                    BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="93px"
                    Style="border-radius: 3px;"></asp:TextBox>
                <asp:TextBox ID="txtPsswrd" runat="server" Style="margin-left: 5px; border-radius: 3px;"
                    BorderColor="#0066FF" placeholder="Password" BorderWidth="1px" BorderStyle="Solid"
                    TextMode="Password" Height="20px" Width="98px"></asp:TextBox>
                <asp:Button ID="btnSignin" runat="server" Text="Sign In" BackColor="#FF6600" ForeColor="White"
                    Height="20px" Width="69px" Style="border-radius: 3px;" 
                    onclick="btnSignin_Click" />
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" BackColor="#33CC33" ForeColor="White"
                    Height="20px" Width="70px" Style="border-radius: 3px;" 
                    onclick="btnSignup_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Style="margin-left: 105px;" Text="Remember Me" />
                <h5 style="float: right; margin-right: 20px;">
                    I forgot my :
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#33CCFF" NavigateUrl="~/Forgot.aspx">User Name</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" url="#" runat="server" ForeColor="#33CCFF" NavigateUrl="~/ForgotPassword.aspx">Password</asp:HyperLink></h5>
            </div>
          <h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                You Trusted Source For Everthing Mobile.&nbsp; </h2>
        </div>
        <div id="Main-Content">
            <div id="imgSqurd">
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Corner -->
<ins class="adsbygoogle"
     style="display:inline-block;width:317px; height:285px"
     data-ad-client="ca-pub-3789707517497651"
     data-ad-slot="4652846225"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
        </div>
            
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <h3>
                <strong>Phonezoo is the preferred destination to share,listen & download all your favorite ringtones! 
                </strong>
            </h3>
           
            <div id="Section">
                <div class="imgSmrtPhn">
                    &nbsp;&nbsp;<a href="RingtoneUpload.aspx">
                    <asp:Image ID="imgSmrtPhn" runat="server" ImageUrl="~/Images/My1.jpg" 
                        Height="118px" Width="207px"></asp:Image></a>
                    <h3>
                       Upload and Share Rintone</h3>
                </div>


                <div class="imgSmrtPhn">
                    &nbsp;&nbsp; <a href="RingtoneList.aspx">
                    <asp:Image ID="imgRngtns" runat="server" ImageUrl="~/Images/My1.jpg" Height="118px"
                            Width="221px"></asp:Image>
                    </a>
                    <h3>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Download</h3>
                </div>
               <!-- <div class="imgSmrtPhn1">
                    <asp:Image ID="imgTrnsfr" runat="server" ImageUrl="~/Images/52.jpg" Height="102px"
                        Width="192px"></asp:Image>
                    <h3>
                        Transfer Contacts</h3>
                </div> -->
            </div>
        </div>
        <div id="End-Contain">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            
<!-- etcphone -->
<ins class="adsbygoogle"
     style="display:inline-block;width:856px; height:90px"
     data-ad-client="ca-pub-3789707517497651"
     data-ad-slot="7978402624"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
            
        </div>
        
        <div id="footer">
            <div id="Copyright">
                Copyright(c)2015 Phonezoo.comright(c)2015 Phonezoo.com</div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use</a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy</a></li>
               <!-- <li><a href="dmca.aspx">DMCA Policy</a></li>-->
               <!--<li><a href="#">Info@phonezoo.com</a></li>
                <li><a href="reportabuse.aspx">Report Abuse</a></li>-->
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
