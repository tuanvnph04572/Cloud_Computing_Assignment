<%@ Page Title="Customer" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customer.aspx.vb" Inherits="Nhom_6.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Ma_KH" DataSourceID="Show_Customer" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                <asp:BoundField DataField="SDT" HeaderText="SĐT" SortExpression="SDT" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
                <asp:BoundField DataField="" HeaderText="" SortExpression="" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" DataSourceID="Show_Customer">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                HoTen:
                <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                GhiChu:
                <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                HoTen:
                <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                GhiChu:
                <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CommandName="New" Text="Thêm Khách Hàng" Width="133px" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="Show_Customer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_1 %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [Ma_KH] = @original_Ma_KH" InsertCommand="INSERT INTO [KHACH_HANG] ([Ma_KH], [HoTen], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (@Ma_KH, @HoTen, @GioiTinh, @DiaChi, @SDT, @Email, @GhiChu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SDT] = @SDT, [Email] = @Email, [GhiChu] = @GhiChu WHERE [Ma_KH] = @original_Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="original_Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
                <asp:Parameter Name="original_Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </asp:Panel>
</asp:Content>