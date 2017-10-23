<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CIISA - Ejemplo paneles</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>
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
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                            <asp:ListItem Selected="True" Value="0">Sin paneles</asp:ListItem>
                            <asp:ListItem Value="1" href="#Modal_1" data-toggle="modal">Panel N°1</asp:ListItem>
                            <asp:ListItem Value="2" href="#Modal_2" data-toggle="modal">Panel N°2</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-xl-3"></div>
            </div>
    </div>
    <div id="Modal_1" class="modal fade" role="dialog">
        <div id="Panel1" runat="server" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Panel N°1</h4>
                </div>
                <div class="modal-body text-center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Octocat.png" Width="250" />
                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-success" data-dismiss="modal" ID="Button1" runat="server" Text="Cerrar" />
                </div>
            </div>
        </div>
    </div>

    <div id="Modal_2" class="modal fade" role="dialog">
        <div id="Panel2" runat="server" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Panel N°2</h4>
                </div>
                <div class="modal-body text-center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/getbootstrap-card.png" Width="250" />
                </div>
                <div class="modal-footer">
                    <asp:Button type="button" class="btn btn-success" data-dismiss="modal" ID="Button2" runat="server" Text="Cerrar" />
                </div>
            </div>
        </div>
    </div>
    </form>
    </div>

    <script type="text/javascript">
        function abrirModal(opcion) {
            console.log(opcion);
            $('#Modal_1').modal({ show: false });
            $('#Modal_2').modal({ show: false });
            switch (opcion) {
                case "1":
                    console.log("Entro a 1");
                    $('#Modal_1').modal('show');
                    break;
                case "2":
                    console.log("Entro a 2");
                    $('#Modal_2').modal('show');
                    break;
            }
        }
    </script>
</body>
</html>
