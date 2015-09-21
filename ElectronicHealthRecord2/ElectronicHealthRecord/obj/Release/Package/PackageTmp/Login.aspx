<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ElectronicHealthRecord.Login" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <table class="auto-style1" style="height: 363px">
    <tr>
        <td class="auto-style7" style="vertical-align: middle"><strong>Σύνδεση με Ηέλτρονικό σας Φάκελο</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>ΑΜΚΑ</strong></td>
        <td style="text-indent: 10px">
            <asp:TextBox ID="amkatxt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Προσωπικός κωδικός</strong></td>
        <td style="text-indent: 10px">
            <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Σύνδεση" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style7 {
        width: 343px;
        text-align: right;
    }
</style>
</asp:Content>

