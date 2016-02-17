<%@ Page Title="Recherche" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercice5.aspx.cs" Inherits="prjLab5Donnee.Exercice5" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center">Recherche.</h2>
    <div class="row">
        <div class="col-md-6" style="height:400px; background-color:#E3F2FD; text-align:center">
            <h2><u>Categorie</u></h2>
            <br />
            <asp:TextBox ID="tbSearch" runat="server" OnTextChanged="tbSearch_TextChanged"></asp:TextBox>
           </div>


        <div class="col-md-6" style="height:400px; background-color:#E3F2FD">
            <h2 style="text-align:center"><u>Films</u></h2>
            <asp:GridView ID="GridView1" CssClass="Grid3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre"></asp:BoundField>
                    <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur"></asp:BoundField>
                    <asp:BoundField DataField="DateParution" HeaderText="DateParution" DataFormatString="{0: dd MM  yyyy }" SortExpression="DateParution"></asp:BoundField>
                    <asp:CheckBoxField DataField="EnSalle" HeaderText="EnSalle" SortExpression="EnSalle"></asp:CheckBoxField>
                    <asp:ImageField HeaderText="Image" DataImageUrlFormatString="~/images/{0}" DataImageUrlField="image">
                         <ControlStyle Height="100px" Width="70px" />
                    </asp:ImageField>



                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Titre], [Directeur], [DateParution], [EnSalle], [image] FROM [Films], [CategorieDeFilm] WHERE Films.Categorifield = CategorieDeFilm.Id AND ([Nom] = @Categorifield)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tbSearch" PropertyName="Text" Name="Categorifield" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
    </div>

</asp:Content>
