<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Booking_History.aspx.cs" Inherits="Project.Users.Booking_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Your Bookings</h2>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="flightid" HeaderText="flightid" SortExpression="flightid" />
                <asp:BoundField DataField="flightdate" HeaderText="flightdate" SortExpression="flightdate" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="bookingtime" HeaderText="bookingtime" SortExpression="bookingtime" />
                <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Passengers.gname, Passengers.surname, Bookings.flightid, Bookings.flightdate, Bookings.Id, Bookings.bookingtime, Flights.source, Flights.destination, Flights.price FROM Bookings INNER JOIN Passengers ON Bookings.username = Passengers.username INNER JOIN Flights ON Bookings.flightid = Flights.flightid WHERE (Passengers.username = @username)">
            <SelectParameters>
                <asp:Parameter DefaultValue="" Name="username" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
