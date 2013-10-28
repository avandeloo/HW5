
Partial Class Details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delRecipe As String = e.Values("RecipeName").ToString()
        Response.Write("The Recipe ")
        Response.Write("<span class=deletedrecipehighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> Has Been Deleted From The Database.")

        Response.AddHeader("REFRESH", "3;URL=./Recipes.aspx")
    End Sub



    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Recipes.aspx")
    End Sub

End Class
