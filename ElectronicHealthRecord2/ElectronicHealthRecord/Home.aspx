<%@ Page Title="Αρχική σελίδα" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ElectronicHealthRecord.Home" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <p style="text-indent: 10px" >
                                        Καλώς ήλθατε στo σύστημα του Δ. Κατσή Γεώργιου.</p>
<p style="text-indent: 10px">
                                        Σύνδεση ως: 


                                        <asp:DropDownList ID="LogInAsList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LogInAsList_SelectedIndexChanged">
                                            <asp:ListItem Value="0">Γιατρός</asp:ListItem>
                                            <asp:ListItem Value="1">Ασθενής</asp:ListItem>
                                        </asp:DropDownList>


</p>
    <p style="text-indent: 10px">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style16">Σύνδεση στο e-Health Record</td>
                        <td class="auto-style17" style="text-align: left"></td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Username:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="usernametxt" runat="server" style="margin-left: 16px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernametxt" ErrorMessage="Παρακαλώ συμπληρώστε το  username σας"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Password:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="passtxt" runat="server" style="margin-left: 16px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passtxt" ErrorMessage="Παρακαλώ συμπληρώστε το password σας"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15" style="text-align: left">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 12px" Text="Σύνδεση" Width="65px" />
                            <br />
                            <asp:Label ID="wrongIdlbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View2" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style20" style="border-style: none; text-indent: 10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Σύνδεση στο e-Health Record</td>
                        <td style="text-align: left;"></td>
                    </tr>
                    <tr>
                        <td class="auto-style21" style="border-style: none; text-indent: 10px">AMKA:</td>
                        <td style="text-align: left;">
                            <asp:TextBox ID="amkatxt" runat="server" style="margin-left: 10px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="amkatxt" ErrorMessage="Παρακαλώ συμπληρώστε το ΑΜΚΑ σας"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="border-style: none; text-indent: 10px">&nbsp;</td>
                        <td style="text-align: left;">
                            <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Σύνδεση" Height="26px" style="margin-left: 12px" />
                            <br />
                            <asp:Label ID="wrongIdlbl1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:View>
        </asp:MultiView>&nbsp;</p>
                                </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
        width: 429px;
        text-align: right;
        height: 49px;
    }
    .auto-style15 {
        height: 49px;
    }
    .auto-style16 {
        width: 429px;
        text-align: right;
        height: 23px;
    }
    .auto-style17 {
        height: 23px;
    }
    .auto-style20 {
        width: 428px;
    }
    .auto-style21 {
        width: 428px;
        text-align: right;
    }
    .auto-style22 {
        width: 429px;
        text-align: right;
    }
    </style>
</asp:Content>


