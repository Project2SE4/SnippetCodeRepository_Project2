﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSharp.aspx.cs" Inherits="SnippetConnect.CSharp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Snippet Code Repository</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css//style.css" />
  <script type="text/javascript" src="js//jquery.min.js"></script>
    <script type="text/javascript" >
        function CallPage(pg) {
            window.open(pg, "mywindow", "menubar=1,resizable=1,width=500,height=500");
        }
 </script>
   
    
  
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
  <div id="main">
    <div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>Snippet Code Repository</h1>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	      <h1 class="auto-style1">Website of Data Management</h1>
	    </div><!--close welcome_slogan-->
	  </div><!--close banner-->
    </div><!--close header-->

	<div id="menubar">
      <ul id="menu">
        <li><a href="HomeForm.aspx">Home</a></li>
        <li><a href="Manage.aspx">Management</a></li>
        <li><a href="Logout.aspx">Logout</a></li>
      </ul>
    </div><!--close menubar-->	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		  <!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Administrator</h2>
              <p>
                  <asp:Label ID="lblAdmin" runat="server" Text="[lblAdmin]" style="font-size: large; font-weight: 700"></asp:Label>
              </p>
              <h2>Latest Update</h2>
            <h3>February 2015</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>March 2015</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>April 2015</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  		
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
            <p>Phone: +66 (0)1234 567891</p>
            <p>Email: arachat.69@gmail.com</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->	
	
	  <div id="content">
        <div class="content_item">
		  <h1><strong>Data Management</strong></h1> 
	      <p>
              <asp:Button ID="btnAdd" runat="server" Text="Add" Height="33px" style="font-weight: 700" Width="80px" PostBackUrl="~/Add.aspx" />
            </p>
		  
		  <br style="clear:both"/>
		  
              <%--<div class="button_small">
		      <a href="#">Read more</a>--%>
		 
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" EnableViewState="false" style="font-size: x-large" />

        <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
            </asp:ToolkitScriptManager>

    <asp:GridView ID="gvData" runat="server" CellPadding="3" ForeColor="Black"

    AutoGenerateColumns="False" Width="100%" OnRowEditing="EditRow" OnRowCancelingEdit="CancelEditRow"

    OnRowUpdating="UpdateRow" DataKeyNames="CSharpId" OnRowDeleting="DeleteRow" AllowPaging="True" OnPageIndexChanging="ChangePage" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 

    GridLines="Vertical" style="font-size: large; text-align: center;">

    <Columns>



        <asp:TemplateField HeaderText="Edit">

            <ItemTemplate>

        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" ForeColor="Green" CommandName="Edit" />

            </ItemTemplate>

        <EditItemTemplate>

        <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="Update" />

        <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" />

            </EditItemTemplate>

        </asp:TemplateField>

        <asp:BoundField HeaderText="ID" DataField="CSharpId" ReadOnly="true"/>

        <asp:BoundField HeaderText="Content" DataField="Content_c" ReadOnly="true" />

        <asp:BoundField DataField="Sourcecode_c" HeaderText="Source Code" ReadOnly="True"/>

        <asp:TemplateField HeaderText="View Code">

            <ItemTemplate>

                <asp:ImageButton ID="imgbtn" ImageUrl="~/images/view.png" runat="server" 
                                Width="25" Height="25"  onclick="imgbtn_Click" />

            </ItemTemplate>

        </asp:TemplateField>



        <asp:TemplateField HeaderText="Delete">

            <ItemTemplate>

                <span onclick="return confirm('Are you sure to delete?')">

        <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" ForeColor="Red" CommandName="Delete" />

                </span>

            </ItemTemplate>

        </asp:TemplateField>

      </Columns>

        <AlternatingRowStyle BackColor="#CCCCCC" />

        <FooterStyle BackColor="#CCCCCC" />

        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />

        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

        <SortedAscendingCellStyle BackColor="#F1F1F1" />

        <SortedAscendingHeaderStyle BackColor="#808080" />

        <SortedDescendingCellStyle BackColor="#CAC9C9" />

        <SortedDescendingHeaderStyle BackColor="#383838" />

    </asp:GridView>
       <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
                CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
        </asp:ModalPopupExtender>

        <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="400px" Width="800px" style="display:none">

    <table width="100%" style="border:Solid 3px #D55500; width:100%; height:100%" cellpadding="0" cellspacing="0">

        <tr style="background-color:#D55500">
        <td style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">Source Code</td>
        </tr>
      <tr>
        
          <td align="center">
        <asp:Label ID="lblCode" runat="server" Font-Bold="true" Font-Size="Large" />
        </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Button ID="btnCancel" runat="server" Text="Close" Font-Size="Medium" Font-Bold="true" Width="75px" Height="45px"/>
                </td>
           </tr>
    </table>
            </asp:Panel>

		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
     
    
	<div id="content_grey">
	  <div class="content_grey_container_box">
		<h4>Latest Blog Post</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
		  <!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_box">
       <h4>Latest News</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	      <!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_boxl">
		<h4>Latest Projects</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	      <!--close readmore-->	  
	  </div><!--close content_grey_container_box1-->      
	  <br style="clear:both"/>
    </div><!--close content_grey-->   
 
  <div id="footer">
	  <a href="http://www.phuket.psu.ac.th/">Website by Prince Of Songkla University Campus,Phuket</a>
  </div><!--close footer-->  
  
    </form>
  
</body>
</html>