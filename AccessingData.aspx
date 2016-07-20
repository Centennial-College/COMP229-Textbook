<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // Create the connection object
        // SQL Server Authentication
        //SqlConnection conn = new SqlConnection(
        //    "Server=localhost\\SqlExpress;" +
        //    "Database=Dorknozzle;" +
        //    "User ID=dorknozzle;" +
        //    "Password=dorknozzle");

        // Windows Authentication
        SqlConnection conn = new SqlConnection(
            "Server=localhost\\SqlExpress;" +
            "Database=Dorknozzle;" +
            "Integrated Security=true");

        // Create the command object 
        SqlCommand comm = new SqlCommand(
            "SELECT EmployeeID, Name FROM Employees", conn);

        // Open the connection to execute the command
        conn.Open();
        SqlDataReader reader = comm.ExecuteReader();

        // process the data
        // reader reads one row at a time until there are no records left, when it returns false
        while (reader.Read())
        {
            //SqlDataReader specify column name to get specific value from the result set/table
            employeesLabel.Text += reader["Name"] + "<br />";
        }

        // close the connection as soon as possible after use
        reader.Close();
        conn.Close();
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using ADO.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="employeesLabel" runat="server" />
        </div>
    </form>
</body>
</html>
