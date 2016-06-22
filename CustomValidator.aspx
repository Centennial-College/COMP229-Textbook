<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void CheckUniqueUserName(Object s, ServerValidateEventArgs e)
    {
        string username = e.Value.ToLower();
        if (username == "andrei" || username == "cristian")
        {
            e.IsValid = false;
        }
    }
    void submitButton_Click(Object s, EventArgs e)
    {
        if (Page.IsValid)
        {
            submitButton.Text = "Valid";
        }
        else
        {
            submitButton.Text = "Invalid";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Validator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                New Username:<br />
                <asp:TextBox ID="usernameTextBox" runat="server" />
                <asp:CustomValidator ID="usernameUnique" runat="server"
                    ControlToValidate="usernameTextBox"
                    OnServerValidate="CheckUniqueUserName"
                    ErrorMessage="This username already taken!" />
            </p>
            <p>
                <asp:Button Text="Submit" ID="submitButton"
                    OnClick="submitButton_Click" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
