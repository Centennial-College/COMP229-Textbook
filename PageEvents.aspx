<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void Page_Init(Object s, EventArgs e)
    {
        messageLabel.Text = "1. Page_Init <br/>";
    }
    void Page_Load(Object s, EventArgs e)
    {
        messageLabel.Text += "2. Page_Load <br/>";
    }
    void Page_PreRender(Object s, EventArgs e)
    {
        messageLabel.Text += "3. Page_PreRender <br/>";
    }
    void Page_UnLoad(Object s, EventArgs e)
    {
        messageLabel.Text += "4. Page_UnLoad <br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="messageLabel" runat="server" />
        </div>
    </form>
</body>
</html>
