<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="AddExaminations.aspx.cs" Inherits="ElectronicHealthRecord.AddExaminations" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <p style="height: 670px; text-indent: 20px; vertical-align: 10px;">
                                        Παρακαλώ επιλέξτε εξετάσεις

    <br />
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 24px">
            <asp:ListItem Value="0">Γενική Αίματος</asp:ListItem>
                                        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Αριθμός Λευκών αιμοσφαιρίων(<strong>WBC)</strong></td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="wbctxt" runat="server" style="margin-left: 0px" Width="57px"></asp:TextBox>
                            10^9/L</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Αριθμός Ερυθρών αιμοσφαιρίων(RBC)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="rbctxt" runat="server" style="margin-left: 0px" Width="57px"></asp:TextBox>
                            10^12/L</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Αιμοσφαιρίνη(Hb)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="hbtxt" runat="server" Width="57px"></asp:TextBox>
                            g/dl</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Αιματοκρίτης(HCT)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="hcttxt" runat="server" Width="57px"></asp:TextBox>
                            %</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Μέσος όγκος Ερυθρών αιμοσφαιρίων(MCV)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="mcvtxt" runat="server" Width="57px"></asp:TextBox>
                            fl</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Μέση περιεκτικότητα Αιμοσφαιρίνης(MCH)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="mchtxt" runat="server" Width="57px"></asp:TextBox>
                            pg</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Αριθμός Αιμοπεταλίων(PLT)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="plttxt" runat="server" Width="57px"></asp:TextBox>
                            10^9/L</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Μέσος όγκος Αιμοπεταλίων(MPV)</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <asp:TextBox ID="mpv" runat="server" Width="57px"></asp:TextBox>
                            ft</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td style="text-indent: 24px; vertical-align: top;">
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Καταχώριση" />
                        </td>
                    </tr>
                </table>
            </asp:View>
                                        </asp:MultiView>
    </p>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 410px;
            font-weight: 700;
            text-align: right;
        }
    </style>
</asp:Content>


