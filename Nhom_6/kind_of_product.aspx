<%@ Page Title="Kind of product" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="kind_of_product.aspx.vb" Inherits="Nhom_6.kind_of_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
</asp:Panel>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ma_Loai" DataSourceID="kindofproduct" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Ma_Loai" HeaderText="Mã Loại" ReadOnly="True" SortExpression="Ma_Loai" />
        <asp:BoundField DataField="TenLoai" HeaderText="Tên Loại" SortExpression="TenLoai" />
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
<asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_Loai" DataSourceID="kindofproduct">
    <EditItemTemplate>
        Ma_Loai:
        <asp:Label ID="Ma_LoaiLabel1" runat="server" Text='<%# Eval("Ma_Loai") %>' />
        <br />
        TenLoai:
        <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Ma_Loai:
        <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
        <br />
        TenLoai:
        <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:Button ID="Button1" runat="server" CommandName="New" Text="Thêm Loại Sản Phẩm" Width="156px" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="kindofproduct" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Assignment_Nhom6ConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SP] WHERE [Ma_Loai] = @original_Ma_Loai AND [TenLoai] = @original_TenLoai" InsertCommand="INSERT INTO [LOAI_SP] ([Ma_Loai], [TenLoai]) VALUES (@Ma_Loai, @TenLoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_Loai], [TenLoai] FROM [LOAI_SP]" UpdateCommand="UPDATE [LOAI_SP] SET [TenLoai] = @TenLoai WHERE [Ma_Loai] = @original_Ma_Loai AND [TenLoai] = @original_TenLoai">
    <DeleteParameters>
        <asp:Parameter Name="original_Ma_Loai" Type="String" />
        <asp:Parameter Name="original_TenLoai" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Ma_Loai" Type="String" />
        <asp:Parameter Name="TenLoai" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenLoai" Type="String" />
        <asp:Parameter Name="original_Ma_Loai" Type="String" />
        <asp:Parameter Name="original_TenLoai" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
