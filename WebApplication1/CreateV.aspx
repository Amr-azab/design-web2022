<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="CreateV.aspx.cs" Inherits="Voting_System.CreateV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 236px;
        }
        .auto-style15 {
            width: 310px;
        }
        .auto-style16 {
            width: 235px;
        }
    .auto-style17 {
        width: 236px;
        direction: ltr;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Voting Name:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextNV" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextNV" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextNV" ErrorMessage="Invalid Name" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Voting ID:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextID" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextID" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextID" ErrorMessage="Invalid ID Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" Text="Number of Vote:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextNOV" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextNOV" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextNOV" ErrorMessage="Invalid Number " Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Button ID="BtnCV" runat="server" Font-Names="Arial" Font-Size="Large" OnClick="BtnCV_Click" Text="Submit" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="lblMMSG" runat="server"></asp:Label>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
