<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="PatienceHistory.aspx.cs" Inherits="ElectronicHealthRecord.PatienceHistory" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
                                    <p style="text-indent: 10px; height: 28px;">
                                        Παρακαλώ επιλέξτε εξέταση:
                                        <br />
                                        <br />
                                        <asp:DropDownList ID="historyExaminationsList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="historyExaminationsList_SelectedIndexChanged">
                                            <asp:ListItem Value="0">Εξέταση</asp:ListItem>
<asp:ListItem Value="1">Γενική Αίματος</asp:ListItem>
                                            <asp:ListItem Value="2">Βιταμίνη Β12  Επίπεδα Ορού</asp:ListItem>
                                            <asp:ListItem Value="3">Φεριττίνη</asp:ListItem>
                                            <asp:ListItem Value="4">Φυλικό Οξύ Επίπεδα Ορού</asp:ListItem>
                                            <asp:ListItem Value="5">Ηλεκτροφόρηση Αιμοσφαιρίνης</asp:ListItem>
                                            <asp:ListItem Value="6">Σίδηρος Ορού</asp:ListItem>
                                            <asp:ListItem Value="7">Οροαντίδραση Coobs</asp:ListItem>
                                        </asp:DropDownList>
                                    </p>
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View8" runat="server"></asp:View>
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 408px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="server=localhost;user id=root;database=ehrdb" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM fullbloodcount WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="ExportToExcel1" Text="Άνοιγμα με Excel" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 399px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="server=localhost;user id=root;database=ehrdb" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM vitamineb12 WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel2" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" Font-Underline="False" />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:GridView ID="GridView3" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 409px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="server=localhost;user id=root;database=ehrdb" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM ferritin WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel3" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:GridView ID="GridView4" runat="server" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 405px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="server=localhost;user id=root;database=ehrdb" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM folicacid WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button4" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel4" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:GridView ID="GridView5" runat="server" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 409px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MySqlMembershipConnection %>" ProviderName="<%$ ConnectionStrings:MySqlMembershipConnection.ProviderName %>" SelectCommand="SELECT * FROM haemoglobin_electrophoresis WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button5" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel5" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
        </asp:View>
        <asp:View ID="View6" runat="server">
            <asp:GridView ID="GridView6" runat="server" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 409px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MySqlMembershipConnection %>" ProviderName="<%$ ConnectionStrings:MySqlMembershipConnection.ProviderName %>" SelectCommand="SELECT * FROM iron WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button6" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel6" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
        </asp:View>
        <asp:View ID="View7" runat="server">
            <asp:GridView ID="GridView7" runat="server" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" style="margin-left: 409px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                 <EmptyDataTemplate>Δεν περιλαμβάνονται εξετάσεις</EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="server=localhost;user id=root;database=ehrdb" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM interpretation_coobs WHERE (amka = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="amka" QueryStringField="patAmka" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button7" runat="server" Text="Άνοιγμα με Excel" OnClick="ExportToExcel7" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" />
        </asp:View>
        
    </asp:MultiView>
                                    <br />
    <asp:Button ID="Button8" runat="server" Text="Πίσω" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="Medium" OnClick="Button8_Click" style="margin-left: 0px" />
    
                                </asp:Content>

