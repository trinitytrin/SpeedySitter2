<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChildrenInfo.aspx.cs" Inherits="ChildrenInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 270px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td class="auto-style1">First Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td class="auto-style1">Last Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>

                
        </tr>
        <tr>
            <td class="auto-style1">DOB</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>

                
        </tr>
        <tr>
            <td class="auto-style1">Sex</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Sex</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>

                
        </tr>
        <tr>
            <td class="auto-style1">Special Needs</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>

                
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="text-align: right" />
            </td>
        </tr>
    </table>
        <table>
    <tr>
    <td align="center">
        <asp:GridView ID="gvSampleForm" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="PId" DataSourceID="SqlDataSource1">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" ReadOnly="True" SortExpression="PId" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="VisaStatus" HeaderText="VisaStatus" SortExpression="VisaStatus" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
           
            </Columns>
        </asp:GridView>
        </td>
       </tr>
       </table>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="CId" HeaderText="CId" InsertVisible="False" ReadOnly="True" SortExpression="CId" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="SpecialNeeds" HeaderText="SpecialNeeds" SortExpression="SpecialNeeds" />
                <asp:BoundField DataField="PId" HeaderText="PId" SortExpression="PId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeedySitterConnectionString %>" SelectCommand="SELECT [PId], [FirstName], [LastName], [DOB], [VisaStatus], [Type], [Phone], [Email], [UserName] FROM [Persons] WHERE ([Type] = @Type)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="parent" Name="Type" SessionField="parent" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SpeedySitterConnectionString %>" SelectCommand="SELECT * FROM [Children]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
