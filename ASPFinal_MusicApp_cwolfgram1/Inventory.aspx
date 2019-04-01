<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="ASPFinal_MusicApp_cwolfgram1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>

        <asp:GridView ID="gvInventory" runat="server" AutoGenerateColumns="False" DataSourceID="Inventory" AllowPaging="True" AllowSorting="True" PageSize="8" OnRowCommand="Owned_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="Delete!" Text="Delete!" />
                <asp:BoundField DataField="musicTitle" HeaderText="Title" SortExpression="musicTitle" />
                <asp:BoundField DataField="musicArtist" HeaderText="Artist" SortExpression="musicArtist" />
                <asp:BoundField DataField="musicFormat" HeaderText="Format" SortExpression="musicFormat" />
                <asp:BoundField DataField="musicGenre" HeaderText="Genre" SortExpression="musicGenre" />
                <asp:BoundField DataField="musicYear" HeaderText="Year" SortExpression="musicYear" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="Inventory" runat="server" ConnectionString="<%$ ConnectionStrings:MusicDbContext %>" SelectCommand="SELECT [musicTitle], [musicArtist], [musicFormat], [musicGenre], [musicYear] FROM [PhysicalMusics] WHERE ([musicOwned] = @musicOwned)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="musicOwned" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>

    </section>
</asp:Content>
