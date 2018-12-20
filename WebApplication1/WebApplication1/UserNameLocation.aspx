<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserNameLocation.aspx.cs" Inherits="WebApplication1.UserNameLocation" %>

<%@ Register src="UserControls/Header.ascx" tagname="Header" tagprefix="userControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 216px;
        }
    </style>
</head>
<body>
    <form defaultbutton="SubmitButton" id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <userControls:Header ID="Header1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td>
                        <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Please Enter First Name">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name</td>
                    <td>
                        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please Enter Last Name">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Birthday"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="Please Enter Your Birthday">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="BirthdayTextBox" ErrorMessage="Please Enter a Valid Date" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter A Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">State</td>
                    <td>
                        <asp:DropDownList ID="StatesDropDown" runat="server">
                            <asp:ListItem Value="" Text="Select One">Select One</asp:ListItem>
                            <asp:ListItem>Arizona</asp:ListItem>
                            <asp:ListItem>California</asp:ListItem>
                            <asp:ListItem>New York</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="StatesDropDown" ErrorMessage="Please Enter Your State">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <br />
                        <br />
                        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        <br />
                        <br />
                        <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
