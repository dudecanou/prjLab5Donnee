<%@ Page Title="Les tables" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercice3.aspx.cs" Inherits="prjLab5Donnee.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center">Les tables.</h2>
    <div class="row">
        <div class="col-md-7" style="height:670px; background-color:#E3F2FD">
            <h2 style="text-align:center"><u>Table Films</u></h2>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" PageSize="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True" HorizontalAlign="right" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="Grid" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" ItemStyle-Width="200px"/>
                    <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur" ItemStyle-Width="150px"/>
                    <asp:BoundField DataField="DateParution" HeaderText="DateParution" DataFormatString="{0: dd MM  yyyy }" SortExpression="DateParution" />
                    <asp:CheckBoxField DataField="EnSalle" HeaderText="EnSalle" SortExpression="EnSalle" />
                    <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="~/images/{0}" HeaderText="Image">
                        <ControlStyle Height="100px" Width="70px" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Titre], [Directeur], [DateParution], [EnSalle], [image] FROM [Films]"></asp:SqlDataSource>
            </div>

        <div class="col-md-5" style="height:670px; background-color:#E3F2FD">
            <div class="table-responsive">
            <h2 style="text-align:center"><u>Table Categories</u></h2>
            <p>

                <asp:GridView ID="GridView2" CssClass="Grid1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nom] FROM [CategorieDeFilm]"></asp:SqlDataSource>

            </p>
            
        </div>
        </div>
        </div>
</asp:Content>
