<%@ Page Theme="indexTheme" Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AT7_TP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="mainContainer">
        <h1>Bienvenu</h1>
        <img src="./Images/img_avatar2.png" alt="Avatar" >
        <br />
        <asp:Label ID="Label1" runat="server"  Text="Pssedo :" ></asp:Label>
        <asp:TextBox ID="TextPseudo" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Mot de passe :" ></asp:Label>
        <asp:TextBox ID="TextPass" runat="server" ></asp:TextBox>
        <br />  <br />  <br />
        <asp:Button ID="BtnAuthentifier" runat="server" OnClick="BtnAuthentifier_Click" Text="S'authentifier"  />
        <br />
        
        <br />
        <span><a href="inscription.aspx">Créer un compte </a></span>
    </div>
</asp:Content>
