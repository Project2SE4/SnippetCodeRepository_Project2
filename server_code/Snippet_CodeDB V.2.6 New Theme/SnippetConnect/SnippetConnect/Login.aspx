<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SnippetConnect.Login" %>

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
        .auto-style1 {
            font-size: large;
            color: #0000FF;
            }
        .auto-style3 {
            font-size: medium;
            color: #000000;
        }
        .auto-style4 {
            font-size: large;
            text-decoration: underline;
        }
    </style>
  
</head>
<body>

    <form id="form1" runat="server">

<div id="tooplate_header">
	<div id="tooplate_top">
       
        
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1><a href="#"></a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="Login.aspx" class="selected">Login</a></li>
          		
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
    </div>
    
    

</div> <!-- end of header -->

<div id="tooplate_main">
	<div class="col_3">
    	<div class="title_with_icon">
            <br />
        </div>
        <div class="cleaner h10"></div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
    <div class="col_3">
    	<div class="title_with_icon">
            <strong><span class="auto-style4">Login</span></strong><br />
        </div>
        <p class="auto-style1">&nbsp;</p>
        <p><span class="auto-style3"><strong>Username:</strong></span>
            <asp:TextBox ID="txtUser" runat="server" Height="25px"></asp:TextBox>
        </p>
        <p><span class="auto-style3"><strong>Password :</strong></span>
            <asp:TextBox ID="txtPass" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:CheckBox ID="cbRem" runat="server" Text="Remember Me" style="font-weight: 700" />
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" style="font-weight: 700; background-color: #999966; font-size: medium;" Text="Login" Height="35px" OnClick="btnLogin_Click" Width="120px" />
        </p>
        <p>
            <asp:HyperLink ID="hplForgot" runat="server" NavigateUrl="~/PasswordRecovery.aspx">Forgot Password</asp:HyperLink>
        </p>
    </div>
    <div class="col_3 col_l">
    	<div class="title_with_icon">
            <br />
        </div>
        <div class="cleaner h10"></div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>

    <div class="col_3">
    	<div class="title_with_icon">
            <br />
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
    <div class="col_3">
    	<div class="title_with_icon">
            <br />
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
    <div class="cleaner"></div>
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