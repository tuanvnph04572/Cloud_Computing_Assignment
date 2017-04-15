<%@ Page Title="Staffs" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="staff.aspx.vb" Inherits="Nhom_6.staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_NV" DataSourceID="show_staff" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Ma_NV" HeaderText="Mã Nhân Viên" ReadOnly="True" SortExpression="Ma_NV" />
            <asp:BoundField DataField="HoTenNV" HeaderText="Họ Tên" SortExpression="HoTenNV" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="SDT" HeaderText="SĐT" SortExpression="SDT" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Luong" HeaderText="Lương" SortExpression="Luong" />
            <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_NV" DataSourceID="show_staff">
        <EditItemTemplate>
            Ma_NV:
            <asp:Label ID="Ma_NVLabel1" runat="server" Text='<%# Eval("Ma_NV") %>' />
            <br />
            HoTenNV:
            <asp:TextBox ID="HoTenNVTextBox" runat="server" Text='<%# Bind("HoTenNV") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SDT:
            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Luong:
            <asp:TextBox ID="LuongTextBox" runat="server" Text='<%# Bind("Luong") %>' />
            <br />
            GhiChu:
            <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Ma_NV:
            <asp:TextBox ID="Ma_NVTextBox" runat="server" Text='<%# Bind("Ma_NV") %>' />
            <br />
            HoTenNV:
            <asp:TextBox ID="HoTenNVTextBox" runat="server" Text='<%# Bind("HoTenNV") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SDT:
            <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Luong:
            <asp:TextBox ID="LuongTextBox" runat="server" Text='<%# Bind("Luong") %>' />
            <br />
            GhiChu:
            <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" CommandName="New" Text="Thêm Nhân Viên" Width="125px" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="show_staff" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Assignment_Nhom6ConnectionString %>" DeleteCommand="DELETE FROM [NHAN_VIEN] WHERE [Ma_NV] = @original_Ma_NV AND [HoTenNV] = @original_HoTenNV AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [SDT] = @original_SDT AND [Email] = @original_Email AND [Luong] = @original_Luong AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))" InsertCommand="INSERT INTO [NHAN_VIEN] ([Ma_NV], [HoTenNV], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [GhiChu]) VALUES (@Ma_NV, @HoTenNV, @GioiTinh, @DiaChi, @SDT, @Email, @Luong, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_NV], [HoTenNV], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [GhiChu] FROM [NHAN_VIEN]" UpdateCommand="UPDATE [NHAN_VIEN] SET [HoTenNV] = @HoTenNV, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SDT] = @SDT, [Email] = @Email, [Luong] = @Luong, [GhiChu] = @GhiChu WHERE [Ma_NV] = @original_Ma_NV AND [HoTenNV] = @original_HoTenNV AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [SDT] = @original_SDT AND [Email] = @original_Email AND [Luong] = @original_Luong AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Ma_NV" Type="String" />
            <asp:Parameter Name="original_HoTenNV" Type="String" />
            <asp:Parameter Name="original_GioiTinh" Type="String" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter Name="original_SDT" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Luong" Type="Decimal" />
            <asp:Parameter Name="original_GhiChu" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ma_NV" Type="String" />
            <asp:Parameter Name="HoTenNV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Luong" Type="Decimal" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTenNV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Luong" Type="Decimal" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="original_Ma_NV" Type="String" />
            <asp:Parameter Name="original_HoTenNV" Type="String" />
            <asp:Parameter Name="original_GioiTinh" Type="String" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter Name="original_SDT" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Luong" Type="Decimal" />
            <asp:Parameter Name="original_GhiChu" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
