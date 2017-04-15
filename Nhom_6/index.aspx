<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.vb" Inherits="Nhom_6._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Our Product - Design By Nhom_6</h1>
                <h2>&nbsp;</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Ma_SP" DataSourceID="Show_San_Pham" CellPadding="5" ForeColor="#333333" GridLines="None" CellSpacing="1" EmptyDataText="No Data">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Ma_SP" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="Ma_SP" />
            <asp:BoundField DataField="Ma_Loai" HeaderText="Mã Loại" SortExpression="Ma_Loai" />
            <asp:BoundField DataField="Ma_NCC" HeaderText="Mã Nhà Cung Cấp" SortExpression="Ma_NCC" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
            <asp:BoundField DataField="GiaSP" HeaderText="Giá Sản Phẩm" SortExpression="GiaSP" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="ChiTiet" HeaderText="Chi Tiết" SortExpression="ChiTiet" />
            <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
            <asp:CommandField HeaderText="Hành Động" ShowDeleteButton="True" ShowEditButton="True" />
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
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_SP" DataSourceID="Show_San_Pham" Width="159px">
            <EditItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel1" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ma_Loai:
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                Ma_NCC:
                <asp:TextBox ID="Ma_NCCTextBox" runat="server" Text='<%# Bind("Ma_NCC") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                GiaSP:
                <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                ChiTiet:
                <asp:TextBox ID="ChiTietTextBox" runat="server" Text='<%# Bind("ChiTiet") %>' />
                <br />
                GhiChu:
                <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataRowStyle Wrap="True" />
            <InsertItemTemplate>
                Ma_SP:
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                Ma_Loai:
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                Ma_NCC:
                <asp:TextBox ID="Ma_NCCTextBox" runat="server" Text='<%# Bind("Ma_NCC") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                GiaSP:
                <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                ChiTiet:
                <asp:TextBox ID="ChiTietTextBox" runat="server" Text='<%# Bind("ChiTiet") %>' />
                GhiChu:
                <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="btn_add_sp" runat="server" CommandName="New" Text="Thêm Sản Phẩm" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    <asp:SqlDataSource ID="Show_San_Pham" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Assignment_Nhom6ConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [Ma_SP] = @original_Ma_SP AND [Ma_Loai] = @original_Ma_Loai AND [Ma_NCC] = @original_Ma_NCC AND [TenSP] = @original_TenSP AND [GiaSP] = @original_GiaSP AND [SoLuong] = @original_SoLuong AND [ChiTiet] = @original_ChiTiet AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))" InsertCommand="INSERT INTO [SAN_PHAM] ([Ma_SP], [Ma_Loai], [Ma_NCC], [TenSP], [GiaSP], [SoLuong], [ChiTiet], [GhiChu]) VALUES (@Ma_SP, @Ma_Loai, @Ma_NCC, @TenSP, @GiaSP, @SoLuong, @ChiTiet, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_SP], [Ma_Loai], [Ma_NCC], [TenSP], [GiaSP], [SoLuong], [ChiTiet], [GhiChu] FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [Ma_Loai] = @Ma_Loai, [Ma_NCC] = @Ma_NCC, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [SoLuong] = @SoLuong, [ChiTiet] = @ChiTiet, [GhiChu] = @GhiChu WHERE [Ma_SP] = @original_Ma_SP AND [Ma_Loai] = @original_Ma_Loai AND [Ma_NCC] = @original_Ma_NCC AND [TenSP] = @original_TenSP AND [GiaSP] = @original_GiaSP AND [SoLuong] = @original_SoLuong AND [ChiTiet] = @original_ChiTiet AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Ma_SP" Type="String" />
            <asp:Parameter Name="original_Ma_Loai" Type="String" />
            <asp:Parameter Name="original_Ma_NCC" Type="String" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_GiaSP" Type="Decimal" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_ChiTiet" Type="String" />
            <asp:Parameter Name="original_GhiChu" Type="String" />
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
            <asp:Parameter Name="original_Ma_Loai" Type="String" />
            <asp:Parameter Name="original_Ma_NCC" Type="String" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_GiaSP" Type="Decimal" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_ChiTiet" Type="String" />
            <asp:Parameter Name="original_GhiChu" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Panel>
</asp:Content>
