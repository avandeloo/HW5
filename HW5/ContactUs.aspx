<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="_Default" %>

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

        <div class="auto-style1">

        <a href="./default.aspx">Home</a> | <a href="./Recipes.aspx">Recipes</a> | <a href="./NewRecipe.aspx">New Recipe</a> | <a href="./AboutUs.aspx">About Us</a>
    
        <br /><br />
    </div>
        </div>
        <p>
            <div id ="ContactBox">
            <asp:Label ID="Label2" runat="server" Text="Email Address:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        
        <p>
            <asp:Label ID="Label3" runat="server" Text="Your Message:"></asp:Label>
        </p>
        <p style="margin-left: 80px">
&nbsp;
            <asp:TextBox 
                ID="TextBox3" 
                runat="server" 
                Height="211px" 
                style="text-align: center; 
                margin-bottom: 0px" 
                Width="396px"
                
                >

            </asp:TextBox>
            </div>
        </p>
            </form>
</body>
</html>
