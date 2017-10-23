<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CIISA - Ejemplo paneles</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <br />
            <h1 class="text-center">CIISA - Ejemplo paneles</h1>
            <br />
            <div class="row">
                <div class="col-md-3 col-lg-3 col-xl-3"></div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                    <div class="form-group">
                        <label for="DropDownList1">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control">
                            <asp:ListItem Selected="True" Value="0">Sin paneles</asp:ListItem>
                            <asp:ListItem Value="1">Panel N°1</asp:ListItem>
                            <asp:ListItem Value="2">Panel N°2</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-xl-3"></div>
            </div>

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
        </form>
    </div>
</body>
</html>
