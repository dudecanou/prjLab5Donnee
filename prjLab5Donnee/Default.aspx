<%@ Page Title="Acceuil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="prjLab5Donnee._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="color:darkseagreen">
        <h1>LES DONNEES</h1>
        <p class="lead">ASP.NET nous facilite le maniement des donnees</p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Les bases de donnees</h2>
            <p>ASP.NET nous permet d'integrer facilement une bases de donnees de type SQL SERVEUR. Sa  creation peut se faire au moyen d'outils graphiques</p>
        </div>


        <div class="col-md-6">
            <h2>L'affichage des donnees</h2>
            <p>ASP.NET nous offre des outils qui facilitent la presentation des donnees, en provenance de tables d'une bases de donnees
                ou du contenu d'un fichier XML.
            </p>
            
        </div>
        
    </div>

</asp:Content>
