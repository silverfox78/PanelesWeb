
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Label1.Text = "Seleccione una opcion: "
        Me.Panel1.Visible = False
        Me.Panel2.Visible = False
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim indice As Integer = Integer.Parse(DropDownList1.SelectedValue)

        Me.Panel1.Visible = False
        Me.Panel2.Visible = False

        Select Case indice
            Case 1
                Me.Panel1.Visible = True
            Case 2
                Me.Panel2.Visible = True
        End Select
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Panel1.Visible = False
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Panel2.Visible = False
    End Sub
End Class
