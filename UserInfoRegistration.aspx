<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeFile="UserInfoRegistration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    <div>
        <table align="center">
            <caption>
                <strong>User Registration</strong></caption>
       <div style="float:left;width:50%">
     <img src="welcome.jpg" width="100%" />
       </div>
 <h3>Please fill out the form and complete registration.</h3>

            <tr>
                <td class="auto-style2"> First Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxFname" runat="server" OnTextChanged="TextBoxFname_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"> Last Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxLname" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"> DOB</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1"> Sex</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListsex" runat="server">
                        <asp:ListItem>Sex</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"> Phone</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style1"> Email</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1"> Type</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListUsertype" runat="server">
                        <asp:ListItem>User Type</asp:ListItem>
                        <asp:ListItem>Parent</asp:ListItem>
                        <asp:ListItem>Baby Sitter</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="auto-style1"> Visa Status</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListVisa" runat="server">
                        <asp:ListItem>VisaType</asp:ListItem>
                        <asp:ListItem>H4 EAD</asp:ListItem>
                        <asp:ListItem>USCitizen</asp:ListItem>
                        <asp:ListItem>Green Card</asp:ListItem>
                        <asp:ListItem>F1</asp:ListItem>
                        <asp:ListItem>F2</asp:ListItem>
                        <asp:ListItem>H1</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblname" runat="server" Visible="false"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <td>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                    </td>
                    
                </td>
            </tr>
        </table>
    
    </div>
    
   </asp:Content>

