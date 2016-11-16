<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowResultAddress.aspx.cs" Inherits="ShowResultAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

       
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceAdd2">
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2;color: #284775;">street_Address:
                    <asp:Label ID="street_AddressLabel" runat="server" Text='<%# Eval("street_Address") %>' />
                    <br />
                    apt:
                    <asp:Label ID="aptLabel" runat="server" Text='<%# Eval("apt") %>' />
                    <br />
                    city:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    state:
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    zip:
                    <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66;color: #000080;">street_Address:
                    <asp:TextBox ID="street_AddressTextBox" runat="server" Text='<%# Bind("street_Address") %>' />
                    <br />
                    apt:
                    <asp:TextBox ID="aptTextBox" runat="server" Text='<%# Bind("apt") %>' />
                    <br />
                    city:
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />
                    state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />
                    zip:
                    <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">street_Address:
                    <asp:TextBox ID="street_AddressTextBox" runat="server" Text='<%# Bind("street_Address") %>' />
                    <br />apt:
                    <asp:TextBox ID="aptTextBox" runat="server" Text='<%# Bind("apt") %>' />
                    <br />city:
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />state:
                    <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    <br />zip:
                    <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #FFFBD6;color: #333333;">street_Address:
                    <asp:Label ID="street_AddressLabel" runat="server" Text='<%# Eval("street_Address") %>' />
                    <br />
                    apt:
                    <asp:Label ID="aptLabel" runat="server" Text='<%# Eval("apt") %>' />
                    <br />
                    city:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    state:
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    zip:
                    <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">street_Address:
                    <asp:Label ID="street_AddressLabel" runat="server" Text='<%# Eval("street_Address") %>' />
                    <br />
                    apt:
                    <asp:Label ID="aptLabel" runat="server" Text='<%# Eval("apt") %>' />
                    <br />
                    city:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    state:
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    zip:
                    <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceAdd2" runat="server" ConnectionString="<%$ ConnectionStrings:TestDB1ConnectionString3 %>" SelectCommand="SELECT [street_Address], [apt], [city], [state], [zip] FROM [Address] WHERE ([street_Address] LIKE '%' + @street_Address + '%') ORDER BY [pid]">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Richards Road" Name="street_Address" QueryStringField="Richards Road" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

       
    
    </div>
    </form>
</body>
</html>
