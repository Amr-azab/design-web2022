<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Polll.aspx.cs" Inherits="Voting_System.Polll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 265px;
    }
    .auto-style15 {
        width: 285px;
    }
    .auto-style16 {
        width: 218px;
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
                <asp:TextBox ID="TeID" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
        <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TeID" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
        <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TeID" ErrorMessage="Invalid ID Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Creaded at:"></asp:Label>
                        </td>
        <td class="auto-style15">
                <asp:TextBox ID="TeCA" runat="server" Font-Names="Arial" Font-Size="Large" TextMode="Date"></asp:TextBox>
            </td>
        <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TeCA" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" Text="Private:"></asp:Label>
                        </td>
        <td class="auto-style15">
            <asp:RadioButtonList ID="RRPP" runat="server" RepeatDirection="Horizontal">
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
                <asp:TextBox ID="TeED" runat="server" Font-Names="Arial" Font-Size="Large" TextMode="Date"></asp:TextBox>
            </td>
        <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TeED" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Large" Text="Title:"></asp:Label>
                        </td>
        <td class="auto-style15">
                <asp:TextBox ID="TeTIT" runat="server" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
            </td>
        <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TeTIT" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Button ID="BtnPoll" runat="server" Font-Names="Arial" Font-Size="Large" OnClick="BtnPoll_Click" Text="Submit" />
        </td>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style15">
            <asp:Label ID="lblMSGM" runat="server"></asp:Label>
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
