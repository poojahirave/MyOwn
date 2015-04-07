<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RingtoneList.aspx.cs" Inherits="RingtoneList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajxtoolkit" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Style/RingtoneList.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        body
        {
            margin: 0px auto;
            width: 1048px;
            font-family: "Trebuchet MS" , Arial, Helvetica, sans-serif;
            background: #C9C9C9;
            height: 931px;
        }
        .blankstar
        {
            background-image: url(Images/blank_star.png);
            width: 16px;
            height: 16px;
        }
        .waitingstar
        {
            background-image: url(Images/half_star.png);
            width: 16px;
            height: 16px;
        }
        .shiningstar
        {
            background-image: url(Images/shining_star.png);
            width: 16px;
            height: 16px;
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

         &nbsp;

         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Search Ringtone:-"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtringtonesearch" runat="server" Height="29px" 
                ontextchanged="txtringtonesearch_TextChanged" Width="239px" AutoPostBack="true"></asp:TextBox>

        </br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="WelCome User"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Label"></asp:Label>
          <div id="Gridvw">
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="241px"
            Width="506px" BackColor="White" AllowPaging="True" CellPadding="3" 
                  CellSpacing="5">
            <Columns>
                <asp:TemplateField HeaderText="Play Music">
                    <ItemTemplate>
                        <asp:Button ID="btnplay" runat="server" Text="Play" Width="60px" CommandArgument='<%# Eval("Id") %>'
                            OnClick="btnplay_Click" />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="LblID" runat="server" Visible="false" Text='<%#Eval("Id") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("Name") %>' OnClick="LinkButton1_Click1"></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                <asp:BoundField DataField="Artist" HeaderText="Artist">
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Rating">
                    <ItemTemplate>
                        <ajxtoolkit:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar"
                            WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" EmptyStarCssClass="blankstar"
                            Tag='<%# Bind("Id")%>' OnChanged="Rating1_Changed" CurrentRating=' <%#Convert.ToInt32((DataBinder.Eval(Container, "DataItem.Rating"))) %>' />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Max Rating">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Rating") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                
            </Columns>
        </asp:GridView>
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
