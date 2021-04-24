<%@ Page Theme="inscriptionTheme" Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="AT7_TP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Inscription</h1>
    <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
    <asp:TextBox ID="TbNom" runat="server" ></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Prénom" ></asp:Label>
    <asp:TextBox ID="TbPrenom" runat="server" ></asp:TextBox>
<br />
<br />
    <asp:Label ID="Label8" runat="server" Text="Matricule" ></asp:Label>
    <asp:TextBox ID="TbMatricule" runat="server" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TbMatricule" ErrorMessage="Format Matricule inccorect" ValidationExpression="[a-zA-Z]{2}[0-9]{5}"></asp:RegularExpressionValidator>
    <br /><br />
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
    <asp:Label ID="Label5" runat="server" Text="Pseudo" ></asp:Label>
    <asp:TextBox ID="TbPseudo" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champ Obligatoire" ControlToValidate="TbPseudo"></asp:RequiredFieldValidator>
    &nbsp;
<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TbPseudo" ErrorMessage="Le pseudo doit etre unique" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    <br /><br />
    <asp:Label ID="Label6" runat="server" Text="Email" ></asp:Label>
    <asp:TextBox ID="TbEmail" runat="server" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbEmail" ErrorMessage="Format Email incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br /><br />
    <asp:Label ID="Label7" runat="server" Text="Mot de passe" ></asp:Label>
    <asp:TextBox ID="TbPassword" runat="server" TextMode="Password" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbPassword" ErrorMessage="la longueur de Mot de passe entre 6 et  8" ValidationExpression=".{6,8}"></asp:RegularExpressionValidator>
    <br />
<br />
    <asp:Label ID="Label9" runat="server" Text="Confirmation Mot de passe" ></asp:Label>
    <asp:TextBox ID="TbConfPass" runat="server" TextMode="Password" ></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbPassword" ControlToValidate="TbConfPass" ErrorMessage="Confirmation ne correspond pas"></asp:CompareValidator>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="S'inscrire" OnClick="Button1_Click" />
   
</asp:Content>
