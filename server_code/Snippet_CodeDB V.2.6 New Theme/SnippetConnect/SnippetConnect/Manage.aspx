<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="SnippetConnect.Manage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
  
    </head>
<body>

    <form id="form1" runat="server">

<div id="tooplate_header">
	<div id="tooplate_top">
        <%--<div id="tooplate_search">
            <form action="#" method="get">
              <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
		</div>--%>
        <asp:Label ID="lblAdmin" runat="server" style="font-size: medium; text-align: right; color: #FFFFFF; float: right; " Text="[lblAdmin]"></asp:Label>
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1><a href="HomeForm.aspx">Snippet Code Repository</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="HomeForm.aspx" class="selected">Home</a></li>
          		
         	  <li><a href="Manage.aspx">Management</a>
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
    </div>
    <div id="tooplate_mid_wrapper">
    	<div id="tooplate_mid_Lang">
        	
                <asp:Button ID="btnC" runat="server" BorderColor="#0066FF" CssClass="buttonclass" Height="150px" PostBackUrl="~/CSharp.aspx" style="float: none; color: #FFFFFF; font-size: 46pt; font-weight: 700; background-color: #0066FF; text-align: center;"  Text="C#" Width="220px" />

            <asp:Button ID="btnJava" runat="server" BorderColor="#00FF99" PostBackUrl="~/Java.aspx" style="color: #FFFFFF; font-size: 46pt; background-color: #00CC66; text-align: center; float: right;" Text="Java" CssClass="buttonclass" Height="150px" Width="270px" />

            <asp:Button ID="btnVB" runat="server" BorderColor="#00CC66" PostBackUrl="~/VB.aspx" style="color: #FFFFFF; font-size: 46pt; background-color: #00CC66; text-align: center; float: right;" Text="VB" CssClass="buttonclass" Height="150px" Width="220px"/>

            <asp:Button ID="btnPython" runat="server" BorderColor="Blue" PostBackUrl="~/Python.aspx" style="color: #FFFFFF; font-size: 38pt; background-color: #0066FF; text-align: center;" Text="Python" CssClass="buttonclass" Height="150px" Width="270px"/>

</div> <!-- end of header -->

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