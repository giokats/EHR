<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="ElectronicHealthRecord.Sesults" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
                                    <p style="text-indent: 10px">
                                        Διαλέξτε τα στατιστικά που θέλετε να παρουσιαστούν: &nbsp; <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem Value="0">Στατιστικά Φερριτίνης με βάση το φύλο</asp:ListItem>
                                            <asp:ListItem Value="1">Στατιστικά Φερριτίνης με βάση την ηλικία</asp:ListItem>
                                            <asp:ListItem Value="2">Στατιστικά Βιταμίνης Β12 με βάση την ηλικία</asp:ListItem>
                                            <asp:ListItem Value="3">Στατιστικά Φυλικού οξύ με βάση την ηλικία</asp:ListItem>
                                            <asp:ListItem Value="4">Στατιστικά Ηλεκτροφόρησης Αιμορφαιρίων με βάση την ηλικία</asp:ListItem>
                                            <asp:ListItem Value="5">Στατιστικά Σιδήρου με βάση την ηλικία</asp:ListItem>
                                            <asp:ListItem Value="6">Στατιστικά Σιδήρου με βάση το φύλο</asp:ListItem>
                                            <asp:ListItem Value="7">Στατιστικά Οροαντίδρασης Coobs με βάση την ηλικία</asp:ListItem>
                                        </asp:DropDownList></p>
                                    <p style="text-indent: 10px">
                                        &nbsp;
                                       
                                       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                           <asp:View ID="View1" runat="server">
                                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                                           <Series>
                                               <asp:Series ChartArea="ChartArea1"  Name="Άντρες" XValueMember="" YValueMembers="q1" Legend="Legend1"></asp:Series>
                                               <asp:Series ChartArea="ChartArea1" Name="Γυναίκες" XValueMember="" YValueMembers="q2" Legend="Legend1">
                                               </asp:Series>
                                           </Series>
                                           <ChartAreas>
                                               <asp:ChartArea Name="ChartArea1"></asp:ChartArea>

                                           </ChartAreas>
                                           
                                           <Legends>
                                               <asp:Legend Name="Legend1">
                                               </asp:Legend>
                                           </Legends>
                                       </asp:Chart> 
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.q1, B.q2 FROM (SELECT AVG(level) AS q1 FROM ferritin WHERE (sex = 'Male')) A, (SELECT AVG(level) AS q2 FROM ferritin ferritin_1 WHERE (sex = 'Female')) B"></asp:SqlDataSource>
                                        <br />
                                        <br />
                                               </asp:View>
                                           <asp:View ID="View2" runat="server">
                                               <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series> 
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                                   <Legends>
                                                       <asp:Legend Name="Legend1">
                                                       </asp:Legend>
                                                   </Legends>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(level) AS A20_29 FROM ehrdb.ferritin f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(level) AS B30_39 FROM ehrdb.ferritin f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(level) AS C40_49 FROM ehrdb.ferritin f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View3" runat="server">
                                               <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                                   <Legends>
                                                       <asp:Legend Name="Legend1">
                                                       </asp:Legend>
                                                   </Legends>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(level) AS A20_29 FROM ehrdb.vitamineb12 f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;=29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(level) AS B30_39 FROM ehrdb.vitamineb12 f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;=39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(level) AS C40_49 FROM ehrdb.vitamineb12 f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;=49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View4" runat="server">
                                               <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                                   <Legends>
                                                       <asp:Legend Name="Legend1">
                                                       </asp:Legend>
                                                   </Legends>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(level) AS A20_29 FROM ehrdb.folicacid f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;=29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(level) AS B30_39 FROM ehrdb.folicacid f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;=39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(level) AS C40_49 FROM ehrdb.folicacid f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;=49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View5" runat="server">
                                               <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                                   <Legends>
                                                       <asp:Legend Name="Legend1">
                                                       </asp:Legend>
                                                   </Legends>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(level) AS A20_29 FROM ehrdb.haemoglobin_electrophoresis f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;=29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(level) AS B30_39 FROM ehrdb.haemoglobin_electrophoresis f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;=39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(level) AS C40_49 FROM ehrdb.haemoglobin_electrophoresis f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;=49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View6" runat="server">
                                               <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource6">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(level) AS A20_29 FROM ehrdb.iron f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;=29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(level) AS B30_39 FROM ehrdb.iron f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;=39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(level) AS C40_49 FROM ehrdb.iron f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;=49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View7" runat="server">
                                               <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource7">
                                                   <Series>
                                               <asp:Series ChartArea="ChartArea1"  Name="Άντρες" XValueMember="" YValueMembers="q1" Legend="Legend1"></asp:Series>
                                               <asp:Series ChartArea="ChartArea1" Name="Γυναίκες" XValueMember="" YValueMembers="q2" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.q1, B.q2 FROM (SELECT AVG(level) AS q1 FROM ehrdb.iron WHERE (sex = 'Male')) A, (SELECT AVG(level) AS q2 FROM ehrdb.iron WHERE (sex = 'Female')) B"></asp:SqlDataSource>
                                           </asp:View>
                                           <asp:View ID="View8" runat="server">
                                               <asp:Chart ID="Chart8" runat="server" DataSourceID="SqlDataSource8">
                                                   <Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="20-29" XValueMember="" YValueMembers="A20_29" Legend="Legend1"></asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="30-39" XValueMember="" YValueMembers="B30_39" Legend="Legend1">
                                                       </asp:Series>
                                                       <asp:Series ChartArea="ChartArea1" Name="40-49" XValueMember="" YValueMembers="C40_49" Legend="Legend1">
                                                       </asp:Series>
                                                   </Series>
                                                   <ChartAreas>
                                                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                   </ChartAreas>
                                                   <Legends>
                                                       <asp:Legend Name="Legend1">
                                                       </asp:Legend>
                                                   </Legends>
                                               </asp:Chart>
                                               <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ehrdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ehrdbConnectionString2.ProviderName %>" SelectCommand="SELECT A.A20_29,B.B30_39 ,C.C40_49 
FROM( SELECT AVG(result) AS A20_29 FROM ehrdb.interpretation_coobs f,ehrdb.patience c WHERE age&gt;=20 AND age&lt;=29 AND f.amka=c.amka) A
CROSS JOIN (SELECT AVG(result) AS B30_39 FROM ehrdb.interpretation_coobs f,ehrdb.patience c WHERE age&gt;=30 AND age&lt;=39 AND f.amka=c.amka) B
CROSS JOIN (SELECT AVG(result) AS C40_49 FROM ehrdb.interpretation_coobs f,ehrdb.patience c WHERE age&gt;=40 AND age&lt;=49 AND f.amka=c.amka) C"></asp:SqlDataSource>
                                           </asp:View>
                                       </asp:MultiView>
                                             </p>
                                    <p style="text-indent: 10px">
                                        <asp:Button ID="Button1" runat="server" Text="Σελίδα Ασθενών" BackColor="#FF9900" Font-Bold="True" Font-Italic="False" Font-Names="Lucida Calligraphy" Font-Size="Small" OnClick="Button1_Click"  />
                                             </p>
                                </asp:Content>


