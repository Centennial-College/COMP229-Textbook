<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TreeView Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapDataSource ID="mySiteMapDataSource" runat="server" />
        <asp:TreeView ID="myTreeView" runat="server" DataSourceID="mySiteMapDataSource" />
    </div>
    </form>
</body>
</html>
