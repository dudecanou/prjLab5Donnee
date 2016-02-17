<%@ Page Title="Interaction entre 2 GridView" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercice4.aspx.cs" Inherits="prjLab5Donnee.Exercice4" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center">Interaction entre 2 GridView.</h2>
    <div class="row">
        <div class="col-md-5" style="height:670px; background-color:#E3F2FD">
            <div class="table-responsive">
            <h2 style="text-align:center"><u>Choisir un directeur</u></h2>

                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="Grid2" DataKeyNames="Directeur">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="==>" />
                        <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur"/>
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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Directeur] FROM [Films]"></asp:SqlDataSource>

            </div>
            </div>
        <div class="col-md-7" style="height:670px; background-color:#E3F2FD">
            <div class="table-responsive">
            <h2 style="text-align:center"><u>Pour voir ses films</u></h2>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CssClass="Grid3">
                    <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre"></asp:BoundField>
                        <asp:CheckBoxField DataField="EnSalle" HeaderText="EnSalle" SortExpression="EnSalle"></asp:CheckBoxField>
                        <asp:BoundField DataField="DateParution" HeaderText="DateParution" DataFormatString="{0: dd MM  yyyy }" SortExpression="DateParution"></asp:BoundField>
                        <asp:BoundField DataField="Directeur" HeaderText="Directeur" SortExpression="Directeur"></asp:BoundField>
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

                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Titre], [EnSalle], [DateParution], [Directeur] FROM [Films] WHERE ([Directeur] = @Directeur)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Directeur" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
