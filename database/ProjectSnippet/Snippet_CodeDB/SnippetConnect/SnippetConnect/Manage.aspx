<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="SnippetConnect.Manage" %>

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
		 
           <%-- <asp:Label ID="lblMessage" runat="server" ForeColor="Green" EnableViewState="false" style="font-size: x-large" />

    <asp:GridView ID="gvData" runat="server" CellPadding="3" ForeColor="Black"

    AutoGenerateColumns="False" Width="100%" OnRowEditing="EditRow" OnRowCancelingEdit="CancelEditRow"

    OnRowUpdating="UpdateRow" DataKeyNames="ID" OnRowDeleting="DeleteRow" AllowPaging="True"

    PageSize="10" OnPageIndexChanging="ChangePage" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" GridLines="Vertical" style="font-size: large" >

<Columns>--%>

<%--<asp:TemplateField HeaderText="Is Active?">

<ItemTemplate>

<%# Eval("Active").ToString().Equals("True") ? "Yes" : "No" %>

</ItemTemplate>

<HeaderStyle HorizontalAlign="Left" />

<EditItemTemplate>

<asp:DropDownList ID="dropActive" runat="server" SelectedValue='<%# Eval("Active") %>'>

<asp:ListItem Text="Yes" Value="True" />

<asp:ListItem Text="No" Value="False" />

</asp:DropDownList>

</EditItemTemplate>

</asp:TemplateField>--%>

<asp:TemplateField HeaderText="Edit">

<ItemTemplate>

<asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit" />

</ItemTemplate>

<EditItemTemplate>

<asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="Update" />

<asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" />

</EditItemTemplate>

</asp:TemplateField>

<asp:BoundField HeaderText="ID" DataField="ContId" ReadOnly="true" />

<asp:TemplateField HeaderText="Language">

<ItemTemplate>


<%# Eval("content_c") %></ItemTemplate>

<EditItemTemplate>

<asp:TextBox ID="txtLang" runat="server" Text='<%# Eval("content_c") %>'/>

</EditItemTemplate>

</asp:TemplateField>

<asp:TemplateField HeaderText="Languages">

<ItemTemplate>

<%# Eval("sourcecode_c") %></ItemTemplate>

<EditItemTemplate>

<asp:TextBox ID="txtContent" runat="server" Text='<%# Eval("sourcecode_c") %>'/>

</EditItemTemplate>

</asp:TemplateField>

<asp:TemplateField HeaderText="Source Code">

<ItemTemplate>

<%# Eval("language") %></ItemTemplate>

<EditItemTemplate>

<asp:TextBox ID="txtSC" runat="server" Text='<%# Eval("language") %>' Columns="3" />

<asp:RequiredFieldValidator ID="REw" runat="server" ControlToValidate="txtSC" Text="*" />

</EditItemTemplate>

</asp:TemplateField>

<asp:TemplateField HeaderText="Delete?">

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

		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content--> 
    
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
 
  </div><!--close main-->
  
  <div id="footer">
	  <a href="http://www.phuket.psu.ac.th/">Website by Prince Of Songkla University Campus,Phuket</a>
  </div><!--close footer-->  
  
    </form>
  
</body>
</html>
