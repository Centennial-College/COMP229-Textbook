<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    void SelectionChanged(Object s, EventArgs e)
    {
        myLabel.Text = "";
        foreach (DateTime d in myCalendar.SelectedDates)
        {
            myLabel.Text += d.ToString("D") + "<br/>";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Title</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Pick your dates:</h1>
            <asp:Calendar ID="myCalendar" runat="server"
                DateNameFormat="Short" FirstDayOfWeek="Sunday"
                NextPrevFormat="FullMonth" SelectionMode="DayWeekMonth"
                SelectWeekText="Select Week"
                SelectMonthText="Select Month" TitleFormat="Month"
                OnSelectionChanged="SelectionChanged" />
            <h1>You have selected these dates:</h1>
            <asp:Label ID="myLabel" runat="server" />
        </div>
    </form>
</body>
</html>
