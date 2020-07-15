<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Display_Flights.aspx.cs" Inherits="Project.Users.Display_Flights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>All Flights</h2>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="flightid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
            <asp:BoundField DataField="flighttime" HeaderText="flighttime" SortExpression="flighttime" />
            <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
            <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Flights]"></asp:SqlDataSource>
    </div>
</asp:Content>
