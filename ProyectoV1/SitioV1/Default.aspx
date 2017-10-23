<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CIISA - Ejemplo paneles</title>
</head>
<body>
    <h1>CIISA - Ejemplo paneles</h1>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True" Value="0">Sin paneles</asp:ListItem>
                        <asp:ListItem Value="1">Panel N°1</asp:ListItem>
                        <asp:ListItem Value="2">Panel N°2</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>

        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <h1>Panel N°1</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Octocat.png" Width="250" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Cerrar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <h1>Panel N°2</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/getbootstrap-card.png" Width="250"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cerrar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
