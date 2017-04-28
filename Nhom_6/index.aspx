
<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.vb" Inherits="Nhom_6._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Home</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Ma_SP" DataSourceID="Show_San_Pham" CellPadding="6" ForeColor="#333333" GridLines="None" EmptyDataText="No Data" CellSpacing="3">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" ReadOnly="True" SortExpression="Ma_SP" />
            <asp:BoundField DataField="Ma_Loai" HeaderText="Ma_Loai" SortExpression="Ma_Loai" />
            <asp:BoundField DataField="Ma_NCC" HeaderText="Ma_NCC" SortExpression="Ma_NCC" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
            <asp:BoundField DataField="ChiTiet" HeaderText="ChiTiet" SortExpression="ChiTiet" />
            <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <br />
        <br />
    <asp:SqlDataSource ID="Show_San_Pham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [Ma_SP] = @original_Ma_SP" InsertCommand="INSERT INTO [SAN_PHAM] ([Ma_SP], [Ma_Loai], [Ma_NCC], [TenSP], [GiaSP], [SoLuong], [ChiTiet], [GhiChu]) VALUES (@Ma_SP, @Ma_Loai, @Ma_NCC, @TenSP, @GiaSP, @SoLuong, @ChiTiet, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_SP], [Ma_Loai], [Ma_NCC], [TenSP], [GiaSP], [SoLuong], [ChiTiet], [GhiChu] FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [Ma_Loai] = @Ma_Loai, [Ma_NCC] = @Ma_NCC, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [SoLuong] = @SoLuong, [ChiTiet] = @ChiTiet, [GhiChu] = @GhiChu WHERE [Ma_SP] = @original_Ma_SP">
        <DeleteParameters>
            <asp:Parameter Name="original_Ma_SP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ma_SP" Type="String" />
            <asp:Parameter Name="Ma_Loai" Type="String" />
            <asp:Parameter Name="Ma_NCC" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="GiaSP" Type="Decimal" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="ChiTiet" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ma_Loai" Type="String" />
            <asp:Parameter Name="Ma_NCC" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="GiaSP" Type="Decimal" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="ChiTiet" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="original_Ma_SP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Panel>
</asp:Content>
