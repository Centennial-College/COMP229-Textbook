<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
    
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>Hello there!</p>
    <p>
        The time is now:
        <asp:Label ID="myTimeLabel" runat="server" />
    </p>
</asp:Content>
