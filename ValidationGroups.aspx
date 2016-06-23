<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Groups</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Login Controls -->
            <h1>Login</h1>
            <!-- Username -->
            <p>
                Username:<br />
                <asp:TextBox ID="usernameTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="usernameReq"
                    runat="server" ControlToValidate="usernameTextBox"
                    ErrorMessage="Username is required!"
                    SetFocusOnError="True" ValidationGroup="Login" />
            </p>
            <!-- Password -->
            <p>
                Password:<br />
                <asp:TextBox ID="passwordTextBox" runat="server"
                    TextMode="Password" />
                <asp:RequiredFieldValidator ID="passwordReq"
                    runat="server" ControlToValidate="passwordTextBox"
                    ErrorMessage="Password is required!"
                    SetFocusOnError="True" ValidationGroup="Login" />
            </p>
            <p>
                <asp:Button ID="loginButton" runat="server" Text="Log In"
                    ValidationGroup="Login" />
            </p>
            <!-- Login Controls -->
            <h1>Register</h1>
            <!-- Username -->
            <p>
                Username:<br />
                <asp:TextBox ID="newUserNameTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="newUserNameReq"
                    runat="server" ControlToValidate="newUserNameTextBox"
                    ErrorMessage="Username is required!"
                    SetFocusOnError="True" ValidationGroup="Register" />
            </p>
            <!-- Password -->
            <p>
                Password:<br />
                <asp:TextBox ID="newPasswordTextBox" runat="server"
                    TextMode="Password" />
                <asp:RequiredFieldValidator ID="newPasswordReq"
                    runat="server" ControlToValidate="newPasswordTextBox"
                    ErrorMessage="Password is required!"
                    SetFocusOnError="True" ValidationGroup="Register" />
            </p>
            <p>
                <asp:Button ID="registerButton" runat="server"
                    Text="Register" ValidationGroup="Register" />
            </p>
        </div>
    </form>
</body>
</html>
