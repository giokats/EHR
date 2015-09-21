<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="SuccessfullAdding.aspx.cs" Inherits="ElectronicHealthRecord.SuccessfullAdding" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
                                    <p style="text-indent: 10px; font-size: x-large;">
                                        Η καταχώρηση έγινε με επιτυχία. 
                                        &nbsp;
                                        <br />&nbsp;
                                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doctor/Patience.aspx">Σελίδα Ασθενών</asp:HyperLink>
                                    </p>
                                </asp:Content>

