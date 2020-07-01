<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h3>Manage Switches</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width: 100%; overflow: scroll">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="SWITCH_NAME" HeaderText="NAME" SortExpression="SWITCH_NAME" />
            <asp:BoundField DataField="BIT_NUM" HeaderText="BIT_NUM" SortExpression="BIT_NUM" />
            <asp:CheckBoxField DataField="IsOn" HeaderText="IsOn" SortExpression="IsOn" />
            <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblSwitch] WHERE [Id] = @original_Id AND [SWITCH_NAME] = @original_SWITCH_NAME AND [BIT_NUM] = @original_BIT_NUM AND [IsOn] = @original_IsOn AND [USER_ID] = @original_USER_ID" InsertCommand="INSERT INTO [tblSwitch] ([SWITCH_NAME], [BIT_NUM], [IsOn], [USER_ID]) VALUES (@SWITCH_NAME, @BIT_NUM, @IsOn, @USER_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblSwitch]" UpdateCommand="UPDATE [tblSwitch] SET [SWITCH_NAME] = @SWITCH_NAME, [BIT_NUM] = @BIT_NUM, [IsOn] = @IsOn, [USER_ID] = @USER_ID WHERE [Id] = @original_Id AND [SWITCH_NAME] = @original_SWITCH_NAME AND [BIT_NUM] = @original_BIT_NUM AND [IsOn] = @original_IsOn AND [USER_ID] = @original_USER_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_SWITCH_NAME" Type="String" />
            <asp:Parameter Name="original_BIT_NUM" Type="String" />
            <asp:Parameter Name="original_IsOn" Type="Boolean" />
            <asp:Parameter Name="original_USER_ID" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SWITCH_NAME" Type="String" />
            <asp:Parameter Name="BIT_NUM" Type="String" />
            <asp:Parameter Name="IsOn" Type="Boolean" />
            <asp:Parameter Name="USER_ID" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SWITCH_NAME" Type="String" />
            <asp:Parameter Name="BIT_NUM" Type="String" />
            <asp:Parameter Name="IsOn" Type="Boolean" />
            <asp:Parameter Name="USER_ID" Type="Object" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_SWITCH_NAME" Type="String" />
            <asp:Parameter Name="original_BIT_NUM" Type="String" />
            <asp:Parameter Name="original_IsOn" Type="Boolean" />
            <asp:Parameter Name="original_USER_ID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

