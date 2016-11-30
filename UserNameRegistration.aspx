<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserNameRegistration.aspx.cs" Inherits="UserNameRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <caption>
                <strong>User Name Registration</strong></caption>
            <tr>
                <td class="auto-style2">UserName</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Visible="false"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
