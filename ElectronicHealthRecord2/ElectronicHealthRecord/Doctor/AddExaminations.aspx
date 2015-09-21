<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="AddExaminations.aspx.cs" Inherits="ElectronicHealthRecord.AddExaminations" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <p style="height: 25px; text-indent: 20px; vertical-align: 10px;">
                                        Παρακαλώ επιλέξτε εξετάσεις
         </p>
    <br />
        <asp:DropDownList ID="ExaminationList" runat="server" style="margin-left: 24px" OnSelectedIndexChanged="ExaminationList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="0">Εξέταση</asp:ListItem>
            <asp:ListItem Value="1">Γενική Αίματος</asp:ListItem>
            <asp:ListItem Value="2">Βιταμίνη Β12 Επίπεδα Ορού</asp:ListItem>
            <asp:ListItem Value="3">Φερριτίνη</asp:ListItem>
            <asp:ListItem Value="4">Φυλικό Οξύ Επίπεδα Ορού</asp:ListItem>
            <asp:ListItem Value="5">Ηλεκτροφόρηση Αιμοσφαιρίνης</asp:ListItem>
            <asp:ListItem Value="6">Σίδηρος Ορού</asp:ListItem>
            <asp:ListItem Value="7">Οροαντίδραση Coobs</asp:ListItem>
                                        </asp:DropDownList>
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View8" runat="server"></asp:View>
            <asp:View ID="View1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style28">ΑΜΚΑ Ασθενή</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="amkafbctxt" runat="server" MaxLength="10" ReadOnly="True" Wrap="False" ></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="amkafbctxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Αριθμός Λευκών αιμοσφαιρίων(<strong>WBC)</strong></td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="wbctxt" runat="server" style="margin-left: 0px" Width="57px"></asp:TextBox>
                            10^9/L
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="wbctxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Αριθμός Ερυθρών αιμοσφαιρίων(RBC)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="rbctxt" runat="server" style="margin-left: 0px" Width="57px"></asp:TextBox>
                            10^12/L
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbctxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Αιμοσφαιρίνη(Hb)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="hbtxt" runat="server" Width="57px"></asp:TextBox>
                            g/dl
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="hbtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Αιματοκρίτης(HCT)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="hcttxt" runat="server" Width="57px"></asp:TextBox>
                            %
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="hcttxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Μέσος όγκος Ερυθρών αιμοσφαιρίων(MCV)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="mcvtxt" runat="server" Width="57px"></asp:TextBox>
                            fl
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mcvtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Μέση περιεκτικότητα Αιμοσφαιρίνης(MCH)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="mchtxt" runat="server" Width="57px"></asp:TextBox>
                            pg
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="mchtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">Αριθμός Αιμοπεταλίων(PLT)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;" class="auto-style17">
                            <asp:TextBox ID="plttxt" runat="server" Width="57px"></asp:TextBox>
                            10^9/L
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="plttxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Μέσος όγκος Αιμοπεταλίων(MPV)</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="mpvtxt" runat="server" Width="57px"></asp:TextBox>
                            ft
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="mpvtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">Ημερομηνία Εξέτασης</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <asp:Calendar ID="fcbcal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 26px" VisibleDate="2015-07-23" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">&nbsp;</td>
                        <td style="text-indent: 10px; vertical-align: middle; text-align: left;">
                            <br />
                            <asp:Button ID="fbcbtn" runat="server" Text="Καταχώριση" OnClick="fbcbtn_Click" style="margin-left: 22px" Width="88px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style19">AMKA Ασθενή&nbsp; </td>
                        <td style="vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="amkab12txt" runat="server" style="margin-left: 25px" ReadOnly="True"></asp:TextBox>
&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="amkab12txt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Επίπεδο</td>
                        <td style="vertical-align: middle; text-align: left;">
                            <asp:TextBox ID="b12txt" runat="server" style="margin-left: 28px" Width="60px"></asp:TextBox>
                            pg/ml
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="b12txt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Ημερομηνία Εξέτασης</td>
                        <td style="vertical-align: middle; text-align: left;">
                            <asp:Calendar ID="b12cal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt"  ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 26px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td style="vertical-align: middle; text-align: left;">
                            <asp:Button ID="b12btn" runat="server" OnClick="b12btn_Click" style="margin-left: 26px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View3" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style14">AMKA Ασθενή&nbsp; </td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="amkafertxt" runat="server" style="margin-left: 3px" ReadOnly="True"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="amkafertxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Φύλλο</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:DropDownList ID="ferSexList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">Παρακαλώ Επιλέξτε</asp:ListItem>
                                <asp:ListItem Value="1">Male</asp:ListItem>
                                <asp:ListItem Value="2">Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Επίπεδο</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="fertxt" runat="server" Width="64px"></asp:TextBox>
                            μg/L
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fertxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Ημερομηνία Εξέτασης</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:Calendar ID="fercal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 24px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <br />
                            <asp:Button ID="ferbtn" runat="server" OnClick="ferbtn_Click" style="margin-left: 2px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View4" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">AMKA Ασθενή&nbsp; </td>
                        <td style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="amkafolictxt" runat="server" style="margin-left: 3px" ReadOnly="True"></asp:TextBox>
&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="amkafolictxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Επίπεδο</td>
                        <td style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="folictxt" runat="server" style="margin-left: 0px" Width="62px"></asp:TextBox>
                            ng./ml
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="folictxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">Ημερομηνία Εξέτασης</td>
                        <td class="auto-style25" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Calendar ID="foliccal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 27px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Button ID="folicbtn" runat="server" OnClick="folicbtn_Click" style="margin-left: 2px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View5" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style16">AMKA Ασθενή&nbsp; </td>
                        <td class="auto-style17" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="amkaelectrtxt" runat="server" style="margin-left: 3px" ReadOnly="True"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="amkaelectrtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Επίπεδο</td>
                        <td class="auto-style17" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="electtxt" runat="server" Width="61px"></asp:TextBox>
                            %
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="electtxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Ημερομηνία Εξέτασης</td>
                        <td class="auto-style17" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Calendar ID="electrcal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 24px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Button ID="electrbtn" runat="server" OnClick="electrbtn_Click" style="margin-left: 2px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View6" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style20">AMKA Ασθενή&nbsp; </td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;" class="auto-style22">
                            <asp:TextBox ID="amkairontxt" runat="server" style="margin-left: 3px" ReadOnly="True"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="amkairontxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Φύλλο</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:DropDownList ID="ironSexList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">Παρακαλώ Επιλέξτε</asp:ListItem>
                                <asp:ListItem Value="1">Male</asp:ListItem>
                                <asp:ListItem Value="2">Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Επίπεδο</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="irontxt" runat="server" Width="64px"></asp:TextBox>
                            μg/dl<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="irontxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Ημερομηνία Εξέτασης</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:Calendar ID="ironcal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 26px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="vertical-align: top; text-indent: 10px; text-align: left;">
                            <asp:Button ID="ironbtn" runat="server" OnClick="ironbtn_Click" style="margin-left: 2px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View7" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style16">AMKA Ασθενή&nbsp; </td>
                        <td class="auto-style23" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="amkainterptxt" runat="server" style="margin-left: 3px" ReadOnly="True"></asp:TextBox>
&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="amkainterptxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Αποτέλεσμα</td>
                        <td class="auto-style23" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:TextBox ID="interptxt" runat="server" Width="62px"></asp:TextBox>
                            &nbsp;-/+
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="interptxt" ErrorMessage="Παρακαλώ συμπληρώστε το πεδίο"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Ημερομηνία Εξέτασης</td>
                        <td class="auto-style23" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Calendar ID="interpcal" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 28px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style23" style="vertical-align: middle; text-indent: 10px; text-align: left;">
                            <asp:Button ID="interpbtn" runat="server" OnClick="interpbtn_Click" style="margin-left: 2px" Text="Καταχώριση" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:View>
                                        </asp:MultiView>
    <asp:Button ID="Button8" runat="server" style="margin-left:0px"  Text="Πίσω" BackColor="#FF9900" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="12pt" OnClick="Button8_Click" CausesValidation="false" />                        
   
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
            width: 409px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style15 {
            width: 410px;
            font-weight: bold;
            text-align: right;
        }
        .auto-style16 {
            width: 410px;
            font-weight: bold;
            text-align: right;
            height: 30px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style19 {
            text-align: right;
            font-weight: bold;
            width: 414px;
        }
        .auto-style20 {
            width: 409px;
            text-align: right;
            font-weight: bold;
            height: 21px;
        }
        .auto-style22 {
            height: 21px;
        }
        .auto-style23 {
            width: 575px;
        }
        .auto-style24 {
            width: 410px;
            font-weight: bold;
            text-align: right;
            height: 23px;
        }
        .auto-style25 {
            height: 23px;
        }
    .auto-style26 {
        width: 418px;
        font-weight: 700;
        text-align: right;
        height: 30px;
    }
        .auto-style28 {
            width: 418px;
            font-weight: 700;
            text-align: right;
        }
    </style>
</asp:Content>


