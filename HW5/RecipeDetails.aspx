<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type = "text/css" href ="./StyleSheet.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
       <h3><span class="auto-style3">Wicked Easy Recipes</span><br />
            Using 5 Ingedients or Less!</h3>
    
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipes] WHERE [RecipeId] = @RecipeId" InsertCommand="INSERT INTO [Recipes] ([RecipeName], [RecipeSubmitted], [IngredientOne], [IngredientTwo], [IngredientThree], [IngredientFour], [IngredientFive], [RecipePrep], [RecipeNotes]) VALUES (@RecipeName, @RecipeSubmitted, @IngredientOne, @IngredientTwo, @IngredientThree, @IngredientFour, @IngredientFive, @RecipePrep, @RecipeNotes)" SelectCommand="SELECT * FROM [Recipes] WHERE ([RecipeId] = @RecipeId)" UpdateCommand="UPDATE [Recipes] SET [RecipeName] = @RecipeName, [RecipeSubmitted] = @RecipeSubmitted, [IngredientOne] = @IngredientOne, [IngredientTwo] = @IngredientTwo, [IngredientThree] = @IngredientThree, [IngredientFour] = @IngredientFour, [IngredientFive] = @IngredientFive, [RecipePrep] = @RecipePrep, [RecipeNotes] = @RecipeNotes WHERE [RecipeId] = @RecipeId">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeId" QueryStringField="RecipeID" Type="Int32" />
            </SelectParameters>
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
        

            <a href="./Default.aspx" style="text-align: center">Home</a> | <a href="./Recipes.aspx">Recipes</a> | <a href="./NewRecipe.aspx">New Recipe</a> | <a href="./AboutUs.aspx">About Us</a> | <a href="./ContactUs.aspx">Contact Us</a>
            <br />
        <br />
        </div>
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="RecipeId" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            Width="323px" 
            HeaderText="Recipe Details"
	        CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldheader"
            ItemStyle-CssClass="item"
            AlternatingRowStyle-CssClass="altrow"
            CommandRowStyle-CssClass="command"
            PagerStyle-CssClass="pager"
        >
            <Fields>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="RecipeSubmitted" HeaderText="Recipe Submitted By" SortExpression="RecipeSubmitted" />
                <asp:BoundField DataField="IngredientOne" HeaderText="Ingredient One" SortExpression="IngredientOne" />
                <asp:BoundField DataField="IngredientTwo" HeaderText="Ingredient Two" SortExpression="IngredientTwo" />
                <asp:BoundField DataField="IngredientThree" HeaderText="Ingredient Three" SortExpression="IngredientThree" />
                <asp:BoundField DataField="IngredientFour" HeaderText="Ingredient Four" SortExpression="IngredientFour" />
                <asp:BoundField DataField="IngredientFive" HeaderText="Ingredient Five" SortExpression="IngredientFive" />
                <asp:BoundField DataField="RecipePrep" HeaderText="Recipe Preparation" SortExpression="RecipePrep" />
                <asp:BoundField DataField="RecipeNotes" HeaderText="Recipe Notes" SortExpression="RecipeNotes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
