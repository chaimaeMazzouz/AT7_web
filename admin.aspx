<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AT7_TP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="36px" Text="Bienvenu"></asp:Label>
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
    <a href="gestionMembres.aspx">Gérer les comptes</a>
<br />
<br />
</asp:Content>
