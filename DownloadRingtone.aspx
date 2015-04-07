<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DownloadRingtone.aspx.cs" Inherits="DownloadRingtone" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/download.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $("[id*=btnPopup]").live("click", function () {
        $("#dialog").dialog({
            title: "Iphone",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });

    $("[id*=btnandroid]").live("click", function () {
        $("#Div1").dialog({
            title: "Android",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });

    $("[id*=btnOther]").live("click", function () {
        $("#Div2").dialog({
            title: "Other Mobile",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="Main">
        <div id="header">
          <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png">
              
            </asp:Image> 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="WelCome User "></asp:Label>
                &nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Label"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <div id="dialog" style="display: none">
    This is an Iphone
</div>
<asp:Button ID="btnPopup" runat="server" Text="iPhone" BackColor="#3399FF" BorderWidth="1px" 
                    Height="28px" Width="82px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<div id="Div1" style="display: none">
    This is an Android</div>
<asp:Button ID="btnandroid" runat="server" Text="Android" BackColor="#3399FF" BorderWidth="1px" 
                    Height="28px" Width="79px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<div id="Div2" style="display: none">
    This is an Other Mobile
</div>
<asp:Button ID="btnOther" runat="server" Text="Othe Mobile" BackColor="#0099FF" 
                    BorderWidth="1px" Height="29px" Width="114px" />
                <br />
            <div id="Gridview">
            
            
                &nbsp;<asp:GridView 
                 ID="GridView1" runat="server" AutoGenerateColumns="False" Height="165px"
            RowStyle-BackColor="#A1DCF2" Font-Names="Arial" Font-Size="10pt" HeaderStyle-BackColor="#3AC0F2"
            HeaderStyle-ForeColor="White" Width="383px" 
            OnRowCommand="GridView1_RowCommand" style="margin-left: 63px" BackColor="#FF9933">
                        <Columns>
                            <asp:TemplateField HeaderText="Make Your Time Musical" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'
                            width="400" height="20" id="dewplayer">
                                        <param name="wmode" value="transparent">
                                        <param name="movie" value='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'>
                                        <%--  <param name='autoplay' value='true'/>
                    <param name='autostart' value='true'/>
                    <param name='controller' value='true'>--%>
                                    </object>
                                    <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#FFCC99" 
            Text="Length:30.0sec"></asp:Label>
                                    <%--   <asp:Label ID="LblID" runat="server" Text ='<%# Eval("Id") %>' Visible="false" ></asp:Label>--%>
                                </ItemTemplate>
                                <ControlStyle BackColor="White" />

<HeaderStyle ForeColor="Black"></HeaderStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="btnDownload" runat="server" onclick="btnDownload_Click" Text="Download" 
                    BackColor="#0033CC" Height="30px" Width="134px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="RingToneList" BackColor="#0033CC" Height="31px" Width="146px" />
        </div>
            <div id="datalist">
            
                &nbsp;&nbsp;
            
                <asp:DataList ID="DataList1" runat="server" Height="16px" 
                     Width="662px">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                  <h2>  Ringtone Details :</h2></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Created By :">
                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="LblCell" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("CreatedBy") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Artist :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Artist") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Category  :">
                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Category") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Description  :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Tags:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Tags") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            
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
