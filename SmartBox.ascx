<%@ Control Language="C#" ClassName="SmartBox" %>

<script runat="server">
    // write-only property
    public string LabelText
    {
        set
        {
            myLabel.Text = value;
        }
    }
    // read-only property
    public string Text
    {
        get
        {
            return myTextBox.Text;
        }
    }
</script>

<p>
    <asp:Label ID="myLabel" Text="" Width="100" runat="server" />
    <asp:TextBox runat="server" ID="myTextBox" Text="" Width="200" 
        MaxLength="20" />
</p>
