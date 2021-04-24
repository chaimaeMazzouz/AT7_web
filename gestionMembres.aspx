<%@ Page Theme="GestMemSkin" Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="gestionMembres.aspx.cs" Inherits="AT7_TP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Gérer les comptes</h1>
     <asp:Label ID="Label5" runat="server" Text="Pseudo" ></asp:Label>
    <asp:DropDownList ID="DdlPseudo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlPseudo_SelectedIndexChanged">
    </asp:DropDownList>
    <br /><br />
      <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
    <asp:TextBox ID="TbNom" runat="server" ></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Prénom" ></asp:Label>
    <asp:TextBox ID="TbPrenom" runat="server" ></asp:TextBox>
<br />
<br />
    <asp:Label ID="Label8" runat="server" Text="Matricule" ></asp:Label>
    <asp:TextBox ID="TbMatricule" runat="server" ></asp:TextBox> <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Service"></asp:Label>
    <asp:DropDownList ID="dDLService" runat="server" >
            <asp:ListItem>--Sélectinner votre choix--</asp:ListItem>
            <asp:ListItem>Ressources Humaines</asp:ListItem>
            <asp:ListItem>Logistique</asp:ListItem>
            <asp:ListItem>Marketing</asp:ListItem>
    </asp:DropDownList><br /><br />
    <asp:Label ID="Label4" runat="server" Text="Catégorie" ></asp:Label>
        <asp:DropDownList ID="dDLCategorie" runat="server" >
            <asp:ListItem>--Sélectinner votre choix--</asp:ListItem>
            <asp:ListItem>Membre</asp:ListItem>
            <asp:ListItem>Administrateur</asp:ListItem>
            <asp:ListItem>Super Administrateur</asp:ListItem>
        </asp:DropDownList><br /><br />
    <asp:Label ID="Label6" runat="server" Text="Email" ></asp:Label>
    <asp:TextBox ID="TbEmail" runat="server" ></asp:TextBox>    <br /><br />
    <asp:Label ID="Label7" runat="server" Text="Mot de passe" ></asp:Label>
    <asp:TextBox ID="TbPassword" runat="server" TextMode="Password" ></asp:TextBox> <br />
<br />
    <asp:Label ID="Label9" runat="server" Text="Confirmation Mot de passe" ></asp:Label>
    <asp:TextBox ID="TbConfPass" runat="server" TextMode="Password" ></asp:TextBox>    <br />
    <asp:Button ID="BtnModifier" runat="server" Font-Bold="True" Font-Names="Neue Haas Grotesk Text Pro Medi" Height="52px" Text="Modifier" Width="158px" OnClick="BtnModifier_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnSupprimer" runat="server" Font-Bold="True" Font-Names="Neue Haas Grotesk Text Pro" Font-Overline="False" Height="52px" Text="Supprimer" Width="158px" />
    <br />
</asp:Content>
