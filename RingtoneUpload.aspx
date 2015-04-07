<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RingtoneUpload.aspx.cs" Inherits="RingtoneUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <%--<script type="text/javascript" src="/js/mediaelement-and-player.min.js"></script>
    <link rel="stylesheet" href="/css/mediaelementplayer.css" />--%>
     <link href="Style/upload.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #dewplayer
        {
            height: 59px;
        }
        #form2
        {
            height: 650px;
        }
    </style>
</head>
    <body>
    <form id="form1" runat="server">
    <div id="Main">
        <div id="header">
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png">
              
            </asp:Image></a> 
            <h2>
                You Trusted Source For Everthing Mobile.</h2>
        
        </div>
           <div id="imgBvertical">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- ph -->
            <ins class="adsbygoogle" style="display: inline-block; width: 150px; height: 650px"
                data-ad-client="ca-pub-3789707517497651" data-ad-slot="6281343421"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
            </div>

        <div id="Main-Content">
          <div id="panel">
          <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FF9966" 
                  Font-Bold="True" />
              <br />
              <br />
             
          <asp:Label ID="lbltitle" runat="server" Text="Title "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txttitle" runat="server" Height="31px" 
            Width="165px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lblartist" runat="server" Text="Artist "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtartist" runat="server" Height="28px" Width="172px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server" Text="Description "></asp:Label>
        &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lblcat" runat="server" Text="Category "></asp:Label>
        &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBoxList ID="chkcategory" runat="server" Height="34px" 
            RepeatDirection="Horizontal" Width="300px">
            <asp:ListItem Selected="True" Value="0">Everyday Sounds</asp:ListItem>
            <asp:ListItem Value="1">Holiday</asp:ListItem>
            <asp:ListItem Value="2">Music</asp:ListItem>
        </asp:CheckBoxList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lbltags" runat="server" Text="Tags "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txttags" runat="server" Height="29px" Width="166px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Keep It Private : "></asp:Label>
&nbsp;<asp:CheckBoxList ID="chkprivate" runat="server" Height="18px" 
            RepeatDirection="Horizontal" Width="300px">
            <asp:ListItem Selected="True" Value="0">Yes</asp:ListItem>
            <asp:ListItem Value="1">No</asp:ListItem>
        </asp:CheckBoxList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                  ID="Button1" runat="server" BackColor="#FF9966" Font-Bold="True" Height="25px" 
                  onclick="Button1_Click" Text="RingtoneList" Width="118px" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpload" runat="server" BackColor="#FF9966" Font-Bold="True" 
            OnClick="btnUpload_Click" Text="Upload To Phonezoo" Height="25px" 
                  Width="177px" />

          
              
          
          
          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:Button ID="btnlogout" runat="server" onclick="btnlogout_Click" 
        Text="LogOut" BackColor="#FF9966" Font-Bold="True" Height="24px" Width="69px" />
              
          
          
          </div>
        </div>
         
         <div id="End-Contain"> 
         <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            
<!-- etcphone -->
<ins class="adsbygoogle"
     style="display:inline-block;width:914px; height:90px"
     data-ad-client="ca-pub-3789707517497651"
     data-ad-slot="7978402624"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
           
        </div>
        <div id="footer-termofuse">
            <div id="Copyright-termofuse">
                Copyright(c)2015 Phonezoo.com</div>
            <ul>
                <!--<li><a href="#">Info@phonezoo.com</a></li>-->
                <li><a href="termsofuse.aspx">Termsofuse</a></li>
                <li><a href="privacypolicy.aspx">PrivacyPolicy</a></li>
            </ul>
        </div>
     </div>
    </form>



    </body>
</html>
