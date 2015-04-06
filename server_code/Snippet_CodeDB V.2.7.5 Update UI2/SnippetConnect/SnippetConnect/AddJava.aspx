<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddJava.aspx.cs" Inherits="SnippetConnect.AddJava" %>

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
            text-align: center;
        }

           .hidden
     {
         display:none;
     }
        .auto-style1 {
            float: none;
        }
        .auto-style5 {
            height: 24px;
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style8 {
            width: 10px;
        }
        .auto-style9 {
            text-align: right;
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
              <li><a href="HomeForm.aspx" >Home</a></li>
          		
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
    	<div class="auto-style9">
            <strong><span class="auto-style4">Add Data Java<br />
            </span></strong><br />
            
        </div>
       
    </div>

    <div class="addlang">
        <p><table align="center" class="auto-style1">
           
            <tr>
                <td class="auto-style5">
                    <font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong style="text-align: left">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language :&nbsp;</strong>&nbsp;</font> <span class="auto-style7">Java</span></td>
                
            </tr>
               <tr>
                <td class="auto-style6">
                    <font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Content :</strong></font>
                    <asp:TextBox ID="txtCont" runat="server" Height="30px" Width="305px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <font size="3"><strong>Source Code :</strong>&nbsp;</font> <asp:TextBox ID="txtSC" runat="server" Height="462px" TextMode="MultiLine" Width="461px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnAdd" runat="server" style="text-align: center; font-weight: 700; float: right;" Text="Add" BorderColor="White" Height="32px" Width="83px" OnClick="btnAdd_Click"  />
                </td>
                <td class="auto-style8">
                    </td>
            </tr>
        </table>
</p>
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