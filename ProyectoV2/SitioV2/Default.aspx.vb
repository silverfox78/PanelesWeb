﻿
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Label1.Text = "Seleccione una opcion: "
        Me.Panel1.Visible = True
        Me.Panel2.Visible = True
        DropDownList1.Attributes.Add("onChange", "abrirModal(this.value)")
    End Sub

End Class
