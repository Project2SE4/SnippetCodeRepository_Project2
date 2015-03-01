<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopupCode.aspx.cs" Inherits="SnippetConnect.PopupCode" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Untitled Page</title>
<style type="text/css">
.modalBackground
{
background-color: Gray;
z-index: 10000;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
    
    </asp:ToolkitScriptManager>
<div>
<asp:GridView runat="server" ID="gvdetails" DataKeyNames="sourcecodes_id" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
<RowStyle BackColor="White" />
<FooterStyle BackColor="#CCCCCC" />
<PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
<Columns>
<asp:TemplateField HeaderText="Edit">
<ItemTemplate>
<asp:ImageButton ID="imgbtn" ImageUrl="~/images/Edit.jpg" runat="server" Width="25" Height="25" onclick="imgbtn_Click" />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="sourcecodes_id" HeaderText="ID" />
    <asp:BoundField DataField="code" HeaderText="Source Code" />
</Columns>
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:Label ID="lblresult" runat="server"/>
<asp:Button ID="btnShowPopup" runat="server" style="display:none" />
<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
    
    </asp:ModalPopupExtender>
<asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="269px" Width="400px" style="display:none">
<table width="100%" style="border:Solid 3px #D55500; width:100%; height:100%" cellpadding="0" cellspacing="0">
<tr style="background-color:#D55500">
<td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">Source Code</td>
</tr>

<tr>
<td align="left">
Code:
</td>
<td>
<asp:Label ID="lblname" runat="server"></asp:Label>
</td>
</tr>

<tr>
<td>
<asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</td>
</tr>
</table>
</asp:Panel>
</div>
</form>
</body>
</html>

