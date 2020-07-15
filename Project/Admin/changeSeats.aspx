<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="changeSeats.aspx.cs" Inherits="Project.Admin.changeSeats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Change Seats</h2>
    <br />
    <br />
    <asp:Label ID="EnterBookingID" runat="server" Text="Enter Booking ID:"></asp:Label><asp:TextBox ID="BookingID" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button_Click" Text="Submit" />
    <asp:Label ID="Error" runat="server" Text=""></asp:Label>
    <br />
    <br />

    <asp:Label ID="AvailableSeats" runat="server" Text="Available seats on selected flight:"></asp:Label>
    <table style="width: 48%;" border="1">
        <tr>
            <td>1A<br />
                <asp:Button ID="oneAbutton" runat="server" Text="Select" Visible="False" OnClick="oneAbutton_Click" />
            </td>
            <td>2A<br />
                <asp:Button ID="twoAbutton" runat="server" Text="Select" Visible="False" OnClick="twoAbutton_Click" />
            </td>
            <td>3A<br />
                <asp:Button ID="threeAbutton" runat="server" Text="Select" Visible="False" OnClick="threeAbutton_Click" />
            </td>
            <td>4A<br />
                <asp:Button ID="fourAbutton" runat="server" Text="Select" Visible="False" OnClick="fourAbutton_Click" />
            </td>
            <td>5A<br />
                <asp:Button ID="fiveAbutton" runat="server" Text="Select" Visible="False" OnClick="fiveAbutton_Click" />
            </td>
            <td>6A<br />
                <asp:Button ID="sixAbutton" runat="server" Text="Select" Visible="False" OnClick="sixAbutton_Click" />
            </td>
        </tr>
        <tr>
            <td>1B<br />
                <asp:Button ID="oneBbutton" runat="server" Text="Select" Visible="False" OnClick="oneBbutton_Click" />
            </td>
            <td>2B<br />
                <asp:Button ID="twoBbutton" runat="server" Text="Select" Visible="False" OnClick="twoBbutton_Click" />
            </td>
            <td>3B<br />
                <asp:Button ID="threeBbutton" runat="server" Text="Select" Visible="False" OnClick="threeBbutton_Click" />
            </td>
            <td>4B<br />
                <asp:Button ID="fourBbutton" runat="server" Text="Select" Visible="False" OnClick="fourBbutton_Click" />
            </td>
            <td>5B<br />
                <asp:Button ID="fiveBbutton" runat="server" Text="Select" Visible="False" OnClick="fiveBbutton_Click" />
            </td>
            <td>6B<br />
                <asp:Button ID="sixBbutton" runat="server" Text="Select" Visible="False" OnClick="sixBbutton_Click" />
            </td>
        </tr>
        <tr>
            <td>1C<br />
                <asp:Button ID="oneCbutton" runat="server" Text="Select" Visible="False" OnClick="oneCbutton_Click" />
            </td>
            <td>2C<br />
                <asp:Button ID="twoCbutton" runat="server" Text="Select" Visible="False" OnClick="twoCbutton_Click" />
            </td>
            <td>3C<br />
                <asp:Button ID="threeCbutton" runat="server" Text="Select" Visible="False" OnClick="threeCbutton_Click" />
            </td>
            <td>4C<br />
                <asp:Button ID="fourCbutton" runat="server" Text="Select" Visible="False" OnClick="fourCbutton_Click" />
            </td>
            <td>5C<br />
                <asp:Button ID="fiveCbutton" runat="server" Text="Select" Visible="False" OnClick="fiveCbutton_Click" />
            </td>
            <td>6C<br />
                <asp:Button ID="sixCbutton" runat="server" Text="Select" Visible="False" OnClick="sixCbutton_Click" />
            </td>
        </tr>
        <tr>
            <td>1D<br />
                <asp:Button ID="oneDbutton" runat="server" Text="Select" Visible="False" OnClick="oneDbutton_Click" />
            </td>
            <td>2D<br />
                <asp:Button ID="twoDbutton" runat="server" Text="Select" Visible="False" OnClick="twoDbutton_Click" />
            </td>
            <td>3D<br />
                <asp:Button ID="threeDbutton" runat="server" Text="Select" Visible="False" OnClick="threeDbutton_Click" />
            </td>
            <td>4D<br />
                <asp:Button ID="fourDbutton" runat="server" Text="Select" Visible="False" OnClick="fourDbutton_Click" />
            </td>
            <td>5D<br />
                <asp:Button ID="fiveDbutton" runat="server" Text="Select" Visible="False" OnClick="fiveDbutton_Click" />
            </td>
            <td>6D<br />
                <asp:Button ID="sixDbutton" runat="server" Text="Select" Visible="False" OnClick="sixDbutton_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Update" runat="server" Text="Update" OnClick="updateGlobalSeats_Click" />
    <br />
    <br />
    <asp:Label ID="Confirmation" runat="server" Text=""></asp:Label>
    <br />
</asp:Content>
