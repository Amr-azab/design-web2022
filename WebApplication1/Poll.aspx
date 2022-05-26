<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="voting.aspx.cs" Inherits="Voting_System.voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 206px;
        }
        .auto-style15 {
            width: 296px;
        }
        .auto-style16 {
            width: 227px;
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
            <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="ID:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TexID" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TexID" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TexID" ErrorMessage="Invalid ID Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Created at:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TexCA" runat="server" Font-Names="Arial" Font-Size="Large" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TexCA" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" Text="Private:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:RadioButtonList ID="RRPriv" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="T">True</asp:ListItem>
                    <asp:ListItem Value="F">False</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Large" Text="EndDate:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TexED" runat="server" Font-Names="Arial" Font-Size="Large" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TexED" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Large" Text="Title:"></asp:Label>
                        </td>
            <td class="auto-style15">
                <asp:TextBox ID="TexTI" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TexTI" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Large" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="LblMSGM" runat="server"></asp:Label>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
