<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div>  
    <h2>Contact Us</h2>
    <h3>You can contact us at:</h3>
    <address>
        69 Wattle Lane<br />
        Sydney, NSW 2345<br />
        <abbr title="Phone">P:</abbr>
        (02) 9876 5432
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@RegionAir.com.au</a><br />
        <strong>Flights:</strong> <a href="mailto:Flights@example.com">Flights@RegionAir.com.au</a>
    </address>
</div>
</asp:Content>
