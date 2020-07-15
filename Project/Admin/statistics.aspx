<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="statistics.aspx.cs" Inherits="Project.Admin.statistics" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Chart for the number of bookings for each flight ID.</h2>

    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label">Chart Type:</asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="Column">Column</asp:ListItem>
                <asp:ListItem Value="Pie">Pie</asp:ListItem>
                <asp:ListItem Value="Line">Line</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="2D">2D</asp:ListItem>
                <asp:ListItem Value="3D">3D</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="420px" Height="400px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="flightid" YValueMembers="NumberOfBookings">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY Title="Number of Bookings" TitleFont="Microsoft Sans Serif, 14pt">
                        </AxisY>
                        <AxisX Title="Flight ID" TitleFont="Microsoft Sans Serif, 14pt">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="Number of Bookings per Flight ID" Font="Microsoft Sans Serif, 18pt">
                    </asp:Title>
                </Titles>
            </asp:Chart>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Id) AS NumberOfBookings, flightid FROM Bookings GROUP BY flightid"></asp:SqlDataSource>
    <br />
    <br />

    <h2>Chart for the number of bookings for each month.</h2>

    <br />
    <br />

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">

        <ContentTemplate>
            
            <asp:Label ID="Label2" runat="server" Text="Label">Chart Type:</asp:Label>

            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem Value="Column">Column</asp:ListItem>
                <asp:ListItem Value="Pie">Pie</asp:ListItem>
                <asp:ListItem Value="Line">Line</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="2D">2D</asp:ListItem>
                <asp:ListItem Value="3D">3D</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Width="420px" Height="400px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="month" YValueMembers="NumberOfBookings">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY Title="Number of Bookings" TitleFont="Microsoft Sans Serif, 14pt">
                        </AxisY>
                        <AxisX Title="Month" TitleFont="Microsoft Sans Serif, 14pt">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="Number of Bookings per Month" Font="Microsoft Sans Serif, 18pt">
                    </asp:Title>
                </Titles>
            </asp:Chart>

        </ContentTemplate>

    </asp:UpdatePanel>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DATENAME(MONTH, flightdate) AS month, COUNT(Id) AS NumberOfBookings FROM Bookings GROUP BY DATENAME(MONTH, flightdate)"></asp:SqlDataSource>

</asp:Content>

