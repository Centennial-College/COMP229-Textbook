<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Email Address -->
            <p>
                Email address:<br />
                <asp:TextBox ID="emailTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="emailReq" runat="server"
                    ControlToValidate="emailTextBox"
                    ErrorMessage="Email address is required!"
                    SetFocusOnError="true" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="emailValidator"
                    runat="server" ControlToValidate="emailTextBox"
                    ValidationExpression="^\S+@\S+\.\S+$"
                    ErrorMessage="You must enter a valid email address!" />
            </p>
            <!-- Password -->
            <p>
                Password and Confirmation:<br />
                <asp:TextBox ID="passwordTextBox" runat="server"
                    TextMode="Password" />
                <asp:RequiredFieldValidator ID="passwordReq"
                    runat="server"
                    ControlToValidate="passwordTextBox"
                    ErrorMessage="Password is required!"
                    SetFocusOnError="true" Display="Dynamic" />
                <asp:TextBox ID="confirmPasswordTextBox" runat="server"
                    TextMode="Password" />
                <asp:RequiredFieldValidator ID="confirmPasswordReq"
                    runat="server" ControlToValidate="confirmPasswordTextBox"
                    ErrorMessage="Password confirmation is required!"
                    SetFocusOnError="True" Display="Dynamic" />
                <asp:CompareValidator ID="comparePasswords" runat="server"
                    ControlToCompare="passwordTextBox"
                    ControlToValidate="confirmPasswordTextBox"
                    ErrorMessage="Your passwords do not match up!"
                    Display="Dynamic" />
            </p>
            <!-- Age -->
            <p>
                Age:<br />
                <asp:TextBox ID="ageTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="ageReq" runat="server"
                    ControlToValidate="ageTextBox"
                    ErrorMessage="Age is required!"
                    SetFocusOnError="true" Display="Dynamic" />
                <asp:CompareValidator ID="ageCheck" runat="server"
                    Operator="GreaterThan" Type="Integer"
                    ControlToValidate="ageTextBox" ValueToCompare="15"
                    ErrorMessage="You must be 16 years or older to log in" />
            </p>
            <!-- Birth Date (day-month-year format by location default) -->
            <p>
                Birth Date:<br />
                <asp:TextBox ID="birthDateTextBox" runat="server" />
                <asp:RangeValidator ID="birthDateRangeTest" runat="server"
                    Type="Date" ControlToValidate="birthDateTextBox"
                    MinimumValue="1/1/1970" MaximumValue="31/12/1979"
                    ErrorMessage="You must have been born in the 1970s to use
                    this web site!" />
            </p>
            <!-- Submit Button -->
            <p>
                <asp:Button Text="Submit" ID="submitButton"
                    runat="server"
                    OnClick="submitButton_Click" />
            </p>
            <!-- Validation Summary -->
            <p>
                <asp:ValidationSummary ID="vSummary" runat="server"
                    ShowMessageBox="true" />
            </p>
        </div>
    </form>
</body>
</html>
