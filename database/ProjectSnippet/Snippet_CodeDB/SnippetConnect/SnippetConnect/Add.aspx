<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SnippetConnect.Add" %>

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
        .auto-style2 {
            height: 78px;
        }
        .auto-style3 {
            height: 50px;
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
        <li class="current"><a href="Manage.aspx">Management</a></li>
       
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
		  <h1><strong>Add Data</strong></h1> 
	      <p><table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <font size="3">Language :&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>VB</asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <font size="3">Content :&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCode" DataTextField="Content" DataValueField="Content">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCode" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="SELECT [Content] FROM [manage]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style11">
                    <font size="3">Source Code :&nbsp;</font> <asp:TextBox ID="TextBox1" runat="server" Height="276px" TextMode="MultiLine" Width="409px">class Integers {
  public static void main(String[] arguments) {
    int c; //declaring a variable
&nbsp;
  /* Using for loop to repeat instruction execution */
&nbsp;
    for (c = 1; c &lt;= 10; c++) {
      System.out.println(c);
    }
  }
}
</asp:TextBox>
                </td>
                <td class="auto-style12">
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnAdd" runat="server" style="text-align: center; font-weight: 700;" Text="Add" BorderColor="Black" Height="32px" Width="83px" OnClick="btnAdd_Click"  />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;</p>
		  
		  
		  
              <%--<div class="button_small">
		      <a href="#">Read more</a>--%>
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

