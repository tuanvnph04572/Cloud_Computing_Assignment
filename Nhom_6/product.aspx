<%@ Page Title="Product" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="product.aspx.vb" Inherits="Nhom_6.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_SP" DataSourceID="show_product" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Ma_SP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="Ma_SP" />
                <asp:BoundField DataField="Ma_Loai" HeaderText="Mã loại" SortExpression="Ma_Loai" />
                <asp:BoundField DataField="Ma_NCC" HeaderText="Mã nhà cung cấp" SortExpression="Ma_NCC" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                <asp:BoundField DataField="GiaSP" HeaderText="Giá" SortExpression="GiaSP" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
                <asp:BoundField DataField="ChiTiet" HeaderText="Chi tiết" SortExpression="ChiTiet" />
                <asp:BoundField DataField="GhiChu" HeaderText="Ghi chú" SortExpression="GhiChu" />
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_SP" DataSourceID="show_product">
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
            <InsertItemTemplate>
                Mã sản phẩm:
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                Mã loại:
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                Mã nhà cung cấp:
                <asp:TextBox ID="Ma_NCCTextBox" runat="server" Text='<%# Bind("Ma_NCC") %>' />
                <br />
                Tên:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Giá:
                <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                Số lượng:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                Chi tiết:
                <asp:TextBox ID="ChiTietTextBox" runat="server" Text='<%# Bind("ChiTiet") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="show_product" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_1 %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [Ma_SP] = @original_Ma_SP" InsertCommand="INSERT INTO [SAN_PHAM] ([Ma_SP], [Ma_Loai], [Ma_NCC], [TenSP], [GiaSP], [SoLuong], [ChiTiet], [GhiChu]) VALUES (@Ma_SP, @Ma_Loai, @Ma_NCC, @TenSP, @GiaSP, @SoLuong, @ChiTiet, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [Ma_Loai] = @Ma_Loai, [Ma_NCC] = @Ma_NCC, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [SoLuong] = @SoLuong, [ChiTiet] = @ChiTiet, [GhiChu] = @GhiChu WHERE [Ma_SP] = @original_Ma_SP">
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
