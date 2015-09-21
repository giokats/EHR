<%@ Page Title="Εγγραφή" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ElectronicHealthRecord.Register" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <table class="auto-style1" style="height: 692px">
        <tr>
            <td class="auto-style7">ΑΜΚΑ</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="amkatxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="amkatxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="amkatxt" ErrorMessage="Παρακαλώ συμπληρώστε με 10 αριθμούς" ForeColor="#FF3300" Type="Integer"></asp:RangeValidator>--%>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Όνομα</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="fnametxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnametxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Επίθετο</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="lnametxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnametxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Όνομα Πατέρα</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="fathernametxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fathernametxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Όνομα Μητέρας</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="mothernametxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mothernametxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Τηλέφωνο1</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="tel1txt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tel1txt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Τηλέφωνο2</td>
            <td style="text-align: left;">
                <asp:TextBox ID="tel2txt" runat="server" style="margin-left: 155px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Οδός</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="roadtxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="roadtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Αριθμός</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="numtxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="numtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Περιοχή</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="areatxt" runat="server" OnTextChanged="TextBox14_TextChanged"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="areatxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Πόλη</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="citytxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="citytxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">ΤΚ</td>
            <td class="auto-style13" style="vertical-align: middle">
                <asp:TextBox ID="tktxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tktxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Ηλικία</td>
            <td class="auto-style9" style="vertical-align: middle">
                <asp:TextBox ID="agetxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="agetxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Επάγγελμα</td>
            <td style="vertical-align: middle">
                <asp:TextBox ID="jobtxt" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="jobtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11" style="vertical-align: middle">
                <asp:Button ID="Button1" runat="server" OnClick="registerEventMethod" Text="Εγγραφή" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" style="margin-left: 497px"  Text="Πίσω" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" OnClick="Button2_Click" CausesValidation="false"/>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style7 {
            width: 356px;
            text-align: right;
        }
        .auto-style8 {
            width: 356px;
            height: 31px;
            text-align: right;
        }
        .auto-style9 {
            height: 31px;
        }
        .auto-style10 {
            width: 356px;
            text-align: right;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 356px;
            text-align: right;
            height: 45px;
        }
        .auto-style13 {
            height: 45px;
        }
    </style>
</asp:Content>


