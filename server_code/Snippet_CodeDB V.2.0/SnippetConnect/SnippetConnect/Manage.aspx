<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="SnippetConnect.Manage" %>
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
            <h3><strong>February 2015</strong></h3>
            <p>Add Data Source Code :<br />
                CSharp<br />
                JAVA<br />
                VB<br />
                PYTHON</p>
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h3><strong>March 2015</strong></h3>
            <p>
                <br />
              </p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  
		<div class="sidebar">
          <div class="sidebar_item">
            <h3><strong>April 2015</strong></h3>
            <p>
                <br />
              </p>
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  		
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact2>Contact</h2>
            <p>Email: arachat.69@gmail.com</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->	
	
	  <div id="content">
        <div class="content_item">
		  <h1><strong>Data Management</strong></h1> 
	      
		    <asp:Button ID="btnC" runat="server" Text="C-Sharp" BorderColor="Black" Height="49px" PostBackUrl="~/CSharp.aspx" style="font-weight: 700; font-size: medium; border-width: 4px" Width="101px" />
	      
		  <br style="clear:both"/>
		  
              
            <br />
            <asp:Button ID="btnJava" runat="server" BorderColor="Black" EnableTheming="True" Height="50px" PostBackUrl="~/Java.aspx" style="font-size: medium; font-weight: 700; border-width: 4px" Text="JAVA" Width="102px" />
            
            <br />
            
            <br />
            <asp:Button ID="btnVB" runat="server" BorderColor="Black" EnableTheming="True" Height="50px" PostBackUrl="~/VB.aspx" style="font-size: medium; font-weight: 700; border-width: 4px" Text="VB" Width="102px" />
		 
            <br />
            
            <br />
            <asp:Button ID="btnPython" runat="server" BorderColor="Black" EnableTheming="True" Height="50px" PostBackUrl="~/Python.aspx" style="font-size: medium; font-weight: 700; border-width: 4px" Text="Python" Width="102px" />

		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
      
    
	<div id="content_grey">
	  <div class="content_grey_container_box">
		<h4>&nbsp;</h4>
	    <p> &nbsp;</p>
		  <!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_box">
       <h4>&nbsp;</h4>
	    <p> &nbsp;</p>
	      <!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_boxl">
		<h4>&nbsp;</h4>
	    <p> &nbsp;</p>
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
