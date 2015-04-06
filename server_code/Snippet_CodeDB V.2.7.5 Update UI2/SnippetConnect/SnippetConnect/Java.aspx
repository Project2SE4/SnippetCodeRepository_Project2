<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Java.aspx.cs" Inherits="SnippetConnect.Java" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Snippet Code Repository</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
    function clearText(field) {
        if (field.defaultValue == field.value) field.value = '';
        else if (field.value == '') field.value = field.defaultValue;
    }
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

</script>

<script type="text/javascript">

    ddsmoothmenu.init({
        mainmenuid: "tooplate_menu", //menu DIV id
        orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
        classname: 'ddsmoothmenu', //class added to menu's outer DIV
        //customtheme: ["#1c5a80", "#18374a"],
        contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
    })

</script>

  
     <link rel="stylesheet" href="css/style.css"  type="text/css" />
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            modalPosition();
            $(window).resize(function () {
                modalPosition();
            });
            $('.openModal').click(function (e) {
                $('.modal, .modal-backdrop').fadeIn('fast');
                e.preventDefault();
            });
            $('.close-modal').click(function (e) {
                $('.modal, .modal-backdrop').fadeOut('fast');
            });
        });
        function modalPosition() {
            var width = $('.modal').width();
            var pageWidth = $(window).width();
            var x = (pageWidth / 2) - (width / 2);
            $('.modal').css({ left: x + "px" });
        }
    </script>

    <style type="text/css">
        .auto-style4 {
            font-size: medium;
            text-decoration: underline;
            color: #000000;
        }

           .hidden
     {
         display:none;
     }
    </style>
  
</head>
<body>

    <form id="form1" runat="server">

<div id="tooplate_header">
	<div id="tooplate_top">
       <asp:Label ID="lblAdmin" runat="server" style="font-size: medium; text-align: right; color: #FFFFFF; float: right; font-weight: 700;" Text="[lblAdmin]"></asp:Label>
        
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1><a href="HomeForm.aspx">Snippet Code Repository</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="HomeForm.aspx">Home</a></li>
          		
         	  <li><a href="Manage.aspx" class="selected">Management</a>
                    <ul>
                        <li><a href="CSharp.aspx">CSharp</a></li>
                        <li><a href="Java.aspx">Java</a></li>
                        <li><a href="VB.aspx">VB</a></li>
                        <li><a href="Python.aspx">Python</a></li>
                        
                  </ul>
              </li>
              <li><a href="Logout.aspx">Logout</a></li>
              
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
    </div>
    

</div> <!-- end of header -->

<div id="tooplate_data">
	<div class="col_3">
    	<div class="title_with_icon">
            <strong><span class="auto-style4">Data Java Management<br />
            </span></strong><br />
            <asp:Button ID="btnAdd" runat="server" Text="Add" Height="33px" style="font-weight: 700" Width="80px" PostBackUrl="~/AddJava.aspx" />
            <br />
            <br />
            <br />
        </div>
       
    </div>

    <div class="lang">
        <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Green" style="font-size: x-large" />
        <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="JavaId" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="ChangePage" 
                      OnRowCancelingEdit="CancelEditRow" OnRowDeleting="DeleteRow" OnRowEditing="EditRow" 
                      PageSize="20" style="font-size: medium; text-align: center;" Width="100%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgbtnedit" runat="server" Height="25" ImageUrl="~/images/Edit.png" onclick="imgbtnedit_Click" Width="25" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" ForeColor="Green" Text="Update" />
                        <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="JavaId" HeaderText="ID" ReadOnly="true" />
                <asp:BoundField DataField="Content_java" HeaderText="Content" ReadOnly="true" />


                <asp:BoundField DataField="Sourcecode_java" HeaderText="Code" ReadOnly="True">
                <ItemStyle CssClass="hidden" />
                <HeaderStyle CssClass="hidden" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="Source Code">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgbtn" runat="server" Height="25" ImageUrl="~/images/view.png" onclick="imgbtn_Click" Width="25" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="DateAdd_java" HeaderText="Date Add" ReadOnly="true" />

                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <span onclick="return confirm('Are you sure to remove?')">
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" ForeColor="Red" Text="Remove" />
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
            <PagerSettings PageButtonCount="20" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" 
                                CancelControlID="btnCancel1" PopupControlID="pnlpopup" TargetControlID="btnShowPopup">
        </asp:ModalPopupExtender>

        <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="600px" style="display:none" Width="1000px">

            <table cellpadding="0" cellspacing="0" style="border:Solid 3px #D55500; width:100%; height:100%" width="100%">
                <tr style="background-color:#D55500">
                    <td align="center" style=" height:10%; color:White; font-weight:bold; font-size:larger">Source Code</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:TextBox ID="txtCode" runat="server" AutoPostBack="true" Font-Bold="true" Font-Size="Large" Height="400px" ReadOnly="true" TextMode="MultiLine" Width="900px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="btnCancel1" runat="server" Font-Bold="true" Font-Size="Medium" Height="45px" Text="Close" Width="75px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
            <asp:Label ID="lblresult" runat="server" />
        <asp:Button ID="btnShowPopupEdit" runat="server" style="display:none" />
        <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" BackgroundCssClass="modalBackground" CancelControlID="btnCancel2" PopupControlID="pnEdit" TargetControlID="btnShowPopupEdit">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnEdit" runat="server" BackColor="White" Height="600px" style="display:none" Width="1000px">
            <table cellpadding="0" cellspacing="0" style="border:Solid 3px #D55500; width:100%; height:100%" width="100%">
                <tr style="background-color:#D55500">
                    <td align="center" colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger">Edit</td>
                </tr>
                <tr>
                    <td align="right" style=" font-weight:bold">ID : </td>
                    <td>
                        <asp:Label ID="lblID" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style=" font-weight:bold ">Content : </td>
                    <td>
                        <asp:TextBox ID="txtContent" runat="server" Font-Bold="true" Font-Size="Medium" Height="25px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style=" font-weight:bold ">Source Code: </td>
                    <td>
                        <asp:TextBox ID="txtSC" runat="server" Font-Bold="true" Font-Size="Large" Height="400px" TextMode="MultiLine" Width="900px" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnUpdate2" runat="server" CommandName="Update" Font-Bold="true" Font-Size="Large" Height="45px" onclick="btnUpdate_Click" Text="Update" Width="75px" />
                        <asp:Button ID="btnCancel2" runat="server" Font-Bold="true" Font-Size="Large" Height="45px" Text="Cancel" Width="75px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</div>

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_cr_bar_wrapper">
	<div id="tooplate_cr_bar">
	Website by <a href="http://www.phuket.psu.ac.th/">Prince Of Songkla University Campus,Phuket</a>
    </div>
</div>

    </form>

</body>
</html>