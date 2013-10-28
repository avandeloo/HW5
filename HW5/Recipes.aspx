<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type = "text/css" href ="./StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            font-size: x-large;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="auto-style1">
    
       <h3><span class="auto-style2">Wicked Easy Recipes</span><br />
            Using 5 Ingedients or Less!</h3>
    
    </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipes] WHERE [RecipeId] = @RecipeId" InsertCommand="INSERT INTO [Recipes] ([RecipeName], [RecipeSubmitted], [IngredientOne], [IngredientTwo], [IngredientThree], [IngredientFour], [IngredientFive], [RecipePrep], [RecipeNotes]) VALUES (@RecipeName, @RecipeSubmitted, @IngredientOne, @IngredientTwo, @IngredientThree, @IngredientFour, @IngredientFive, @RecipePrep, @RecipeNotes)" SelectCommand="SELECT * FROM [Recipes]" UpdateCommand="UPDATE [Recipes] SET [RecipeName] = @RecipeName, [RecipeSubmitted] = @RecipeSubmitted, [IngredientOne] = @IngredientOne, [IngredientTwo] = @IngredientTwo, [IngredientThree] = @IngredientThree, [IngredientFour] = @IngredientFour, [IngredientFive] = @IngredientFive, [RecipePrep] = @RecipePrep, [RecipeNotes] = @RecipeNotes WHERE [RecipeId] = @RecipeId">
            <DeleteParameters>
                <asp:Parameter Name="RecipeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="RecipeSubmitted" Type="String" />
                <asp:Parameter Name="IngredientOne" Type="String" />
                <asp:Parameter Name="IngredientTwo" Type="String" />
                <asp:Parameter Name="IngredientThree" Type="String" />
                <asp:Parameter Name="IngredientFour" Type="String" />
                <asp:Parameter Name="IngredientFive" Type="String" />
                <asp:Parameter Name="RecipePrep" Type="String" />
                <asp:Parameter Name="RecipeNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="RecipeSubmitted" Type="String" />
                <asp:Parameter Name="IngredientOne" Type="String" />
                <asp:Parameter Name="IngredientTwo" Type="String" />
                <asp:Parameter Name="IngredientThree" Type="String" />
                <asp:Parameter Name="IngredientFour" Type="String" />
                <asp:Parameter Name="IngredientFive" Type="String" />
                <asp:Parameter Name="RecipePrep" Type="String" />
                <asp:Parameter Name="RecipeNotes" Type="String" />
                <asp:Parameter Name="RecipeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="auto-style1">
    <a href="./default.aspx">Home</a> | <a href="./NewRecipe.aspx">New Recipe</a> | <a href="./AboutUs.aspx">About Us</a> | <a href="./ContactUs.aspx">Contact Us</a>
        <br />
        </div>
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="RecipeId" 
            DataSourceID="SqlDataSource1" 
            Width="650px" 
            PageSize="52" 
            HeaderText="Recipes"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr"

         >
            <Columns>
                <asp:BoundField DataField="RecipeId" HeaderText="Recipe Id" InsertVisible="False" ReadOnly="True" SortExpression="RecipeId" />
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="RecipeSubmitted" HeaderText="Submitted By" SortExpression="RecipeSubmitted" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="RecipeDetails.aspx?RecipeID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
