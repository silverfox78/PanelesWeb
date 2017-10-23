# Version N° 1 - Visual Studio

Los pasos a seguir son los siguientes:

1. Abrir Visual Studio (¬_¬)!
2. Ir al menu de **Archivo**, opcion **Nuevo** y seleccionar **Sitio Web...**
3. Se abre el panel de opciones de un Nuevo sitio web, seleccionamos **Sitio Web Vacio** y una ruta donde se localizaran sus fuentes.

---

En este punto, ya tenemos un sitio web vacio, es por ello que requerimos antes de proceder saber que deseamos hacer...

* Lo primero es disponer de una pagina...
* Lo segundo es seria tener algo que nos permita escoger cual de los dos paneles veremos...
* Tambien seria necesario algo que nos permita volver a un estado **Zero**
* Y claro, dos paneles...

---

## Paso I

Iniciamos por agregar una nueva pagina a nuestro sitio, para ello, a nuestra derecha (usualmente) veremos una ventana llamada **Explorador de soluciones**, en ella veremos, nuestro proyecto y el nuestro sitio, que tendra el **nombre de la carpeta** que hallamos creado para contener el sitio.

**Sugerencia:** Si bien tenemos el sitio creado, la solucion no tecnicamente, mas si creamos el sitio en una ruta especifica, es recomendable seleccionar la solucion ***(hacer clic sobre ella)***, dirigirnos al menu de **Archivo** y seleccionar la opcion de **Guardar [Nombre_Sitio].sln como...** , mi sugerencia es que lo guarden junto con el sitio, de esta forma, en un futuro con este archivo podran abrir el Visual Studio de manera mas comoda.

Volvamos al sitio, seleccionamos el **[Nombre_Sitio]** y presionamos el boton contextual del raton ***(boton derecho usualmente)***, esto abre un menu, buscamos en el la opcion de **Agregar** y esto abre un nuevo sub-menu, ahi vamos a la opcion **Agregar Nuevo Elemento...** , tambien se puede obtener el mismo resultado presionando las teclas [ **Control** + **Shift** + **A** ], ahora seleccionamos la opcion de **[Formulario Web Forms]**, por defecto propone el nombre **Default.aspx**, por el minuto esto no nos es relevante, pero en un futuro lo ideal es que este nombre y su ubicacion respondan a alguna logica.

Si hicimos todo bien, ahora en nuestro sitio tenemos una pagina web representada por un archivo llamado **[Default.aspx]**.

Aunque no es necesario en este ejercicio, es una buena practica **"Definir la pagina principal"**, para ello presionamos el boton contextual del raton y del menu seleccionamos la opcion llamada **Establecer como pagina principal**

---

## Paso II

En la vista de codigo de nuestra pagina tenemos algo asi:

```html
    <%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
        <div>
        
        </div>
        </form>
    </body>
    </html>
```

Para este caso, lo que hagamos debemos centrarnos en el contenido del cuerpo o el **BODY**, para ser mas especifico el contenido del formulario **<form id="form1" runat="server">**, es aqui donde trabajaremos...

Nuestro segundo punto era disponer de algo para tomar una decision, en este caso usaremos un par de textos (**label's**) para poner en contexto a nuestros usuarios y de un combo (**dropdownlist**).

Para ordenar estos elementos, los incrustaremos dentro de una tabla, por ello debemos iniciar agregando una tabla (**HTML**) en la pagina, para esto en el panel izquierdo de nuestra pantalla, en el **Cuadro de herramientas**, buscamos la seccion **HTML** y en ella **Table** y la arrastramos a nuestro formulario...

Por defecto nos hara una tabla de tres por tres... Debemos acomodarla a nuestra necesidad, la dejaremos de dos columnas por una fila, tambien agregaremos un titulo a nuestra pagina.

**Observacion :** Si bien el la cabera de nuestra pagina tenemos la seccion de titulo, no es malo mostrar al usuario de manera clara que esta viendo o donde esta.

El cuerpo de nuestra pagina deberia ser similar al siguiente:

```html
    <h1>CIISA - Ejemplo paneles</h1>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
```

En el primer **TD** es donde anexaremos el Label y en el segundo el DropDownList, para ello limpiaremos los espacios en blanco (**[&nbsp;]** es un espacio en blanco en html).

```html
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
```

La tabla nos tuvo que haber quedado asi o similar... Para agregar los elementos del combo, se puede ir a la vista de **Diseño** de la pagina y eligir la opcion **Editar elementos**, en esa ventana simplemente agregamos nuestras opciones...

Por si no lo imaginaron, la primera opcion es la que retorna a **Zero** nuestro formulario.

**Observacion :** la opcion **Selected="True"** del primer **asp:ListItem** le dice al sistema que esa sera la opcion por defecto que se mostrara.

---

## Paso III

Agregamos los paneles al formulario, estos los ubicaremos bajo la tabla que agregamos, para diferenciarlos agregaremos a cada uno un titulo, una imagen y un boton cerrar... claramente cada panel para contener estos elementos debera disponer de una tabla, asi que la anaxaremos tambien... Los paneles se encuentran en la seccion de elementos **Estandar** del **Cuadro de herramientas**.

```html
        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <h1>Panel N°1</h1>
                    </td>
                </tr>
                <td>
                    <td>
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <td>
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
                <td>
                    <td>
                        <asp:Image ID="Image2" runat="server" />
                    </td>
                </tr>
                <td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cerrar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
```

Para las imagenes, idealmente es necesario crear una carpeta para contenerlas y claro, disponer de ellas, en mi caso creo una carpeta llamada [**IMG**] y en ella dejo dos imagenes, luego los objetos **asp:Image** les asocio las imagenes segun corresponda...

---

## Paso IV

Ahora que ya hemos agregados todos nuestros elementos visuales a la pagina, estos idealmente deberian responder a un MockUp... pero eso es harina de otro costal... Pasamos a la segunda parte de nuestro desarrollo, esta es definir que eventos tendra el sitio.

En este punto, seria bueno ver como se ve el sitio... Para ello podemos presionar **F5** o bien iniciar el sitio (el boton verde de play).

Como veremos, no tenermos un valor para el laber principal y se muestran los dos paneles, asi que le daremos algunos valores iniciales, algo similar a lo siguiente en nuestros code behind...

```vb
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Label1.Text = "Seleccione una opcion"
        Me.Panel1.Visible = False
        Me.Panel2.Visible = False
    End Sub
```