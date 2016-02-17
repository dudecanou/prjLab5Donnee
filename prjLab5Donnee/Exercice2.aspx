<%@ Page Title="Les controles de type List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercice2.aspx.cs" Inherits="prjLab5Donnee.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center">Les controles de type List.</h2>
    <br />
    <div class="row">

        <div class="col-md-4" style="background-color:#90CAF9; height:410px; margin-left:-9px; margin-right:3px">
            <h2 style="text-align:center"><u>BulletedList</u></h2>
            <br />
            <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Titre" DataValueField="Titre">
            </asp:BulletedList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Titre] FROM [Films]"></asp:SqlDataSource>
        </div>

        <div class="col-md-4" style="background-color:#BBDEFB; height:410px; margin-right:3px">
            <h2 style="text-align:center"><u>RadioButtonList</u></h2>
            <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Directeur" DataValueField="Directeur">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Directeur] FROM [Films]"></asp:SqlDataSource>
        </div>

        <div class="col-md-4" style="background-color:#E3F2FD; height:410px; margin-right:3px">
            <h2 style="text-align:center"><u>CheckBoxList</u></h2>
            <br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nom" DataValueField="Nom">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nom] FROM [CategorieDeFilm]"></asp:SqlDataSource>
        </div>
        </div>
    
</asp:Content>
