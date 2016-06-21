<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Testing CSS</title>
    <link rel="stylesheet" type="text/css" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p class="title">
            Please select a product:
        </p>
        <p>
            <asp:DropDownList runat="server" ID="productsList" 
                CssClass="dropdownmenu">
                <asp:ListItem Text="Shirt" Selected="True" />
                <asp:ListItem Text="Hat" />
                <asp:ListItem Text="Pants" />
                <asp:ListItem Text="Socks" />
            </asp:DropDownList>
        </p>
        <p>
            <asp:TextBox runat="server" ID="quantityTextBox"
                cssclass="textbox" />
        </p>
        <p>
            <asp:Button Text="Add to Cart" ID="addToCartButton"
                cssclass="button" runat="server" />
        </p>
    </div>
    </form>
</body>
</html>
