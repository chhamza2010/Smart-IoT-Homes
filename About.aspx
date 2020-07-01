<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your app description page.</h2>
    </hgroup>

    <article>
        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
        <p>        
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="SWITCH_NAME" HeaderText="NAME" SortExpression="SWITCH_NAME" />
                    <asp:BoundField DataField="BIT_NUM" HeaderText="BIT_NUM" SortExpression="BIT_NUM" />
                    <asp:CheckBoxField DataField="IsOn" HeaderText="IsOn" SortExpression="IsOn" />
                    <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblSwitch] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblSwitch] ([SWITCH_NAME], [BIT_NUM], [IsOn], [USER_ID]) VALUES (@SWITCH_NAME, @BIT_NUM, @IsOn, @USER_ID)" SelectCommand="SELECT * FROM [tblSwitch]" UpdateCommand="UPDATE [tblSwitch] SET [SWITCH_NAME] = @SWITCH_NAME, [BIT_NUM] = @BIT_NUM, [IsOn] = @IsOn, [USER_ID] = @USER_ID WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
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
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>