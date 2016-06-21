<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    public void SwitchPage(Object s, EventArgs e)
    {
        myMultiView.ActiveViewIndex = (myMultiView.ActiveViewIndex + 1) % 2;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MultiView Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Button ID="myBtn" Text="Switch Page" runat="server" OnClick="SwitchPage" />
        </p>
        <asp:MultiView ID="myMultiView" runat="server" ActiveViewIndex="0">
            <asp:View ID="firstView" runat="server">
                <p>... contents of the first view ...</p>
            </asp:View>
            <asp:View ID="secondView" runat="server">
                <p>... contents of the second view ...</p>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
