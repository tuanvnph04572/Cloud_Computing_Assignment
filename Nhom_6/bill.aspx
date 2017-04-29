<%@ Page Title="Bills Managements" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="bill.aspx.vb" Inherits="Nhom_6.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
</asp:Panel>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Ma_HD" DataSourceID="bills" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
    <Columns>
        <asp:BoundField DataField="Ma_HD" HeaderText="Mã Hóa Đơn" ReadOnly="True" SortExpression="Ma_HD" />
        <asp:BoundField DataField="Ma_KH" HeaderText="Mã Khách Hàng" SortExpression="Ma_KH" />
        <asp:BoundField DataField="Ma_NV" HeaderText="Mã Nhân Viên" SortExpression="Ma_NV" />
        <asp:BoundField DataField="NhayNhap" HeaderText="Ngày Nhập" SortExpression="NhayNhap" />
        <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" SortExpression="TongTien" />
        <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_HD" DataSourceID="bills">
    <EditItemTemplate>
        Ma_HD:
        <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
        <br />
        Ma_KH:
        <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
        <br />
        Ma_NV:
        <asp:TextBox ID="Ma_NVTextBox" runat="server" Text='<%# Bind("Ma_NV") %>' />
        <br />
        NhayNhap:
        <asp:TextBox ID="NhayNhapTextBox" runat="server" Text='<%# Bind("NhayNhap") %>' />
        <br />
        TongTien:
        <asp:TextBox ID="TongTienTextBox" runat="server" Text='<%# Bind("TongTien") %>' />
        <br />
        GhiChu:
        <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Ma_HD:
        <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
        <br />
        Ma_KH:
        <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
        <br />
        Ma_NV:
        <asp:TextBox ID="Ma_NVTextBox" runat="server" Text='<%# Bind("Ma_NV") %>' />
        <br />
        NhayNhap:
        <asp:TextBox ID="NhayNhapTextBox" runat="server" Text='<%# Bind("NhayNhap") %>' />
        <br />
        TongTien:
        <asp:TextBox ID="TongTienTextBox" runat="server" Text='<%# Bind("TongTien") %>' />
        <br />
        GhiChu:
        <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:Button ID="Button1" runat="server" CommandName="New" Text="Thêm Hóa Đơn" Width="119px" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="bills" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_1 %>" DeleteCommand="DELETE FROM [HOA_DON] WHERE [Ma_HD] = @original_Ma_HD AND [Ma_KH] = @original_Ma_KH AND [Ma_NV] = @original_Ma_NV AND [NhayNhap] = @original_NhayNhap AND [TongTien] = @original_TongTien AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))" InsertCommand="INSERT INTO [HOA_DON] ([Ma_HD], [Ma_KH], [Ma_NV], [NhayNhap], [TongTien], [GhiChu]) VALUES (@Ma_HD, @Ma_KH, @Ma_NV, @NhayNhap, @TongTien, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HOA_DON]" UpdateCommand="UPDATE [HOA_DON] SET [Ma_KH] = @Ma_KH, [Ma_NV] = @Ma_NV, [NhayNhap] = @NhayNhap, [TongTien] = @TongTien, [GhiChu] = @GhiChu WHERE [Ma_HD] = @original_Ma_HD AND [Ma_KH] = @original_Ma_KH AND [Ma_NV] = @original_Ma_NV AND [NhayNhap] = @original_NhayNhap AND [TongTien] = @original_TongTien AND (([GhiChu] = @original_GhiChu) OR ([GhiChu] IS NULL AND @original_GhiChu IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Ma_HD" Type="String" />
        <asp:Parameter Name="original_Ma_KH" Type="String" />
        <asp:Parameter Name="original_Ma_NV" Type="String" />
        <asp:Parameter Name="original_NhayNhap" Type="DateTime" />
        <asp:Parameter Name="original_TongTien" Type="Decimal" />
        <asp:Parameter Name="original_GhiChu" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Ma_HD" Type="String" />
        <asp:Parameter Name="Ma_KH" Type="String" />
        <asp:Parameter Name="Ma_NV" Type="String" />
        <asp:Parameter Name="NhayNhap" Type="DateTime" />
        <asp:Parameter Name="TongTien" Type="Decimal" />
        <asp:Parameter Name="GhiChu" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ma_KH" Type="String" />
        <asp:Parameter Name="Ma_NV" Type="String" />
        <asp:Parameter Name="NhayNhap" Type="DateTime" />
        <asp:Parameter Name="TongTien" Type="Decimal" />
        <asp:Parameter Name="GhiChu" Type="String" />
        <asp:Parameter Name="original_Ma_HD" Type="String" />
        <asp:Parameter Name="original_Ma_KH" Type="String" />
        <asp:Parameter Name="original_Ma_NV" Type="String" />
        <asp:Parameter Name="original_NhayNhap" Type="DateTime" />
        <asp:Parameter Name="original_TongTien" Type="Decimal" />
        <asp:Parameter Name="original_GhiChu" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
