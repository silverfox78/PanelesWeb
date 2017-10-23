# Version N° 2 - Visual Studio + Bootstrap

Omitere las explicaciones de la primera version para centrarme en lo que estamos anexando, en este caso estilo a nuestro sitio...

En este caso dispondremos de un CDN para obtener lo necesario, usaremos la version v3.3.7:

* **CDN :** https://www.bootstrapcdn.com/
* **CSS :** https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css
* **JS JQuery:** https://code.jquery.com/jquery-3.2.1.min.js
* **JS Bootstrap:** https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js

---

# Paso I

Anexaremos la estilo y el script de **Bootstrap** a la pagina, para esto usaremos las siguientes instrucciones en nuestra cabecera:

```html
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
```

Tambien mejoraremos algo el estilo de nuestra pagina...

Para la seccion del combo y el titulo, lo dejamos asi:

```html
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
            ...
        </form>
    </div>
```

Y para los paneles, mejoramos el estilo tambien...

```html
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
```

Para que operara tuvimos que anexar una funcion javascript y moificar el code behind de la pagina, estos quedaron asi:

```javascript
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
```

```vs
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Label1.Text = "Seleccione una opcion: "
        Me.Panel1.Visible = True
        Me.Panel2.Visible = True
        DropDownList1.Attributes.Add("onChange", "abrirModal(this.value)")
    End Sub
```