<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void Click(Object s, EventArgs e)
    {
        feedbackLabel.Text = "Your name is: " + name.Value + "<br>";
        feedbackLabel.Text += "Your email is: " + email.Value + "<br>";
        feedbackLabel.Text += "You like to work with:<br>";
        for (int i = 0; i <= serverModel.Items.Count - 1; i++)
        {
            if (serverModel.Items[i].Selected)
            {
                feedbackLabel.Text += " - " + serverModel.Items[i].Text + "<br>";
            }
        }
        feedbackLabel.Text += "You like .NET: " + likeDotNet.Value;
    }
    void AddButton(Object s, EventArgs e)
    {
        HtmlButton btn = new HtmlButton();
        btn.InnerText = "My New Button";
        testPH.Controls.Add(btn);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using ASP.NET HTML Server Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Take the Survey!</h1>
            <!--Display user name-->
            <p>
                Name:<br />
                <input type="text" id="name" runat="server" />
            </p>
            <!-- Display email -->
            <p>
                Email:<br />
                <input type="text" id="email" runat="server" />
            </p>
            <!-- Display technology options -->
            <p>
                Which server technologies do you use?<br />
                <select id="serverModel" runat="server" multiple="true">
                    <option>ASP.NET</option>
                    <option>PHP</option>
                    <option>JSP</option>
                    <option>CGI</option>
                    <option>Cold Fusion</option>
                </select>
            </p>
            <!-- Display .NET preference options -->
            <p>
                Do you like .NET so far?<br />
                <select id="likeDotNet" runat="server">
                    <option>Yes</option>
                    <option>No</option>
                </select>
            </p>
            <!-- Display confirmation button -->
            <p>
                <button id="confirmButton" onserverclick="Click"
                    runat="server">
                    Confirm</button>
            </p>
            <!-- Confirmation label -->
            <p>
                <asp:Label ID="feedbackLabel" runat="server" />
            </p>
            <asp:PlaceHolder ID="testPH" runat="server" />
            <asp:ListBox ID="listTechnologies" runat="server">
                <asp:ListItem Text="ASP.NET" Value="aspnet" />
                <asp:ListItem Text="JSP" Value="jsp" />
                <asp:ListItem Text="PHP" Value="php" />
                <asp:ListItem Text="CGI" Value="cgi" />
                <asp:ListItem Text="ColdFusion" Value="cf" />
            </asp:ListBox>
            <asp:RadioButtonList ID="favoriteColor" runat="server">
                <asp:ListItem Text="Red" Value="red" />
                <asp:ListItem Text="Blue" Value="blue" />
                <asp:ListItem Text="Green" Value="green" />
            </asp:RadioButtonList>
            <asp:CheckBoxList ID="favoriteFood" runat="server">
                <asp:ListItem Text="Pizza" Value="pizza" />
                <asp:ListItem Text="Tacos" Value="tacos" />
                <asp:ListItem Text="Pasta" Value="pasta" />
            </asp:CheckBoxList>
            <asp:LinkButton ID="myLinkButon" Text="Click Here"
                runat="server" OnClick="AddButton" />
        </div>
    </form>
</body>
</html>
