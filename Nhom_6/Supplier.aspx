<%@ Page Title="Supplier" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Supplier.aspx.vb" Inherits="Nhom_6.Supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_NCC" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Ma_NCC" HeaderText="Mã nhà cung cấp" ReadOnly="True" SortExpression="Ma_NCC" />
            <asp:BoundField DataField="TenNCC" HeaderText="Tên" SortExpression="TenNCC" />
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_NCC" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Ma_NCC:
            <asp:Label ID="Ma_NCCLabel1" runat="server" Text='<%# Eval("Ma_NCC") %>' />
            <br />
            TenNCC:
            <asp:TextBox ID="TenNCCTextBox" runat="server" Text='<%# Bind("TenNCC") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mã nhà cung cấp:
            <asp:TextBox ID="Ma_NCCTextBox" runat="server" Text='<%# Bind("Ma_NCC") %>' />
            <br />
            Tên nhà cung cấp:
            <asp:TextBox ID="TenNCCTextBox" runat="server" Text='<%# Bind("TenNCC") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_1 %>" DeleteCommand="DELETE FROM [NHA_CC] WHERE [Ma_NCC] = @original_Ma_NCC" InsertCommand="INSERT INTO [NHA_CC] ([Ma_NCC], [TenNCC]) VALUES (@Ma_NCC, @TenNCC)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [NHA_CC]" UpdateCommand="UPDATE [NHA_CC] SET [TenNCC] = @TenNCC WHERE [Ma_NCC] = @original_Ma_NCC">
        <DeleteParameters>
            <asp:Parameter Name="original_Ma_NCC" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ma_NCC" Type="String" />
            <asp:Parameter Name="TenNCC" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenNCC" Type="String" />
            <asp:Parameter Name="original_Ma_NCC" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
