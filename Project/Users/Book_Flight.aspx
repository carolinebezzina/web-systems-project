<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Book_Flight.aspx.cs" Inherits="Project.Users.Book_Flight" %>



    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <h2>Flight And Seat Selection</h2>
    <asp:Label ID="FlightIDLabel" runat="server" Text="Flight ID"></asp:Label>
    <asp:TextBox ID="FlightIDTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FlightIDTextBox" runat="server" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
    <asp:Label ID="Error" runat="server" Text=""></asp:Label>
        <br />
        
        <asp:Label ID="DateLabel" runat="server" Text="Flight Date"></asp:Label>
    <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DateTextBox" runat="server" ErrorMessage="Please fill in this field"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="searchFlights" /><br />
    

        <br />
            
        <br />
        <asp:Label ID="AvailableSeats" runat="server" Text="Please Select a seat:"></asp:Label>
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
            <asp:Label ID="flightPriceLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="seatSelectionLabel" runat="server" Text=""></asp:Label>
            <br />
    <asp:Button ID="Button2" runat="server" Text="Next" CommandName="SwitchViewByID" CommandArgument="View2" />
        <br />

            </asp:View>
            <asp:View ID="View2" runat="server">
                <h4>Payment Details</h4>
        <table>
            <tr>
              <!--Credit card type dropdown slection-->
              <td class="labelCell">Credit Card Type:</td>
              <td class="auto-style1">
                <asp:DropDownList
                  ID="CardType"
                  runat="server">
                  <asp:ListItem>VISA</asp:ListItem>
                  <asp:ListItem>MASTERCARD</asp:ListItem>
                  <asp:ListItem>AMX</asp:ListItem>
                </asp:DropDownList>
              </td>
              <td class="errorMsg">
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardType"
                  ErrorMessage="Error: This field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
              <td class="labelCell">Name on Credit Card:</td>
              <td>
                <asp:TextBox
                  ID="CardName"
                  runat="server">
                </asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardName" ErrorMessage="This field must only contain letters and hyphens or apostrophes." ValidationExpression="^[a-zA-Z][a-zA-Z-']+$" />
              </td>
              <td class="errorMsg">
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardName"
                  ErrorMessage="Error: This field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>

              </td>
            </tr>
            <tr>
              <!--Card Number input-->
              <td class="labelCell">Card Number:</td>
              <td>
                <asp:TextBox
                  ID="CardNumber"
                  runat="server">
                </asp:TextBox>
              </td>
              <td class="errorMsg">
                <asp:RegularExpressionValidator
                    runat="server"
                    ControlToValidate="CardNumber"
                    ErrorMessage="Error: Only 16 digits allowed, no spaces or hyphens"
                    Display="Dynamic"
                    ValidationExpression="^[0-9]{16}$">
                  </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardNumber"
                  ErrorMessage="Error: This field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
              <!--Credit card expiry inputs-->
              <td class="labelCell">Card Expiry:</td>
              <td>
                <asp:DropDownList
                  ID="CardExpiryMonth" 
                  runat="server"
                  Width="60px"
                  AutoPostBack="True">
                  <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
                  <asp:ListItem>7</asp:ListItem>
                  <asp:ListItem>8</asp:ListItem>
                  <asp:ListItem>9</asp:ListItem>
                  <asp:ListItem>10</asp:ListItem>
                  <asp:ListItem>11</asp:ListItem>
                  <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                /
                <asp:DropDownList 
                  ID="CardExpiryYear" 
                  runat="server" 
                  Width="60px" 
                  AutoPostBack="True">
                  <asp:ListItem>2015</asp:ListItem>
                  <asp:ListItem>2016</asp:ListItem>
                  <asp:ListItem>2017</asp:ListItem>
                  <asp:ListItem>2018</asp:ListItem>
                  <asp:ListItem>2019</asp:ListItem>
                  <asp:ListItem>2020</asp:ListItem>
                  <asp:ListItem>2021</asp:ListItem>
                  <asp:ListItem>2022</asp:ListItem>
                  <asp:ListItem>2023</asp:ListItem>
                  <asp:ListItem>2024</asp:ListItem>
                  <asp:ListItem>2025</asp:ListItem>
                  <asp:ListItem>2026</asp:ListItem>
                  <asp:ListItem>2027</asp:ListItem>
                  <asp:ListItem>2028</asp:ListItem>
                  <asp:ListItem>2029</asp:ListItem>
                  <asp:ListItem>2030</asp:ListItem>
                </asp:DropDownList>
              </td>
              <td class="errorMsg">
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardExpiryMonth"
                  ErrorMessage="Error: The month field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardExpiryYear"
                  ErrorMessage="Error: The year field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
              <!--Credit card security code input-->
              <td class="labelCell">Card Security Code (CVC):</td>
              <td>
                <asp:TextBox
                  ID="CardSecurityCode"
                  runat="server"
                  Width="41px">
                </asp:TextBox>
              </td>
              <td class="errorMsg">
                <asp:RegularExpressionValidator
                    runat="server"
                    ControlToValidate="CardSecurityCode"
                    ErrorMessage="Error: Only 3 digits allowed"
                    Display="Dynamic"
                    ValidationExpression="^[0-9]{3}$">
                  </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator
                  runat="server"
                  ControlToValidate="CardSecurityCode"
                  ErrorMessage="Error: This field cannot be left empty"
                  Display="Dynamic">
                </asp:RequiredFieldValidator>
              </td>
            </tr>
            
          </table>
                <asp:Button ID="Button3" runat="server" CommandArgument="View3" CommandName="SwitchViewByID" Text="Next" OnClick="Button3_Click" />
        <br />
                </asp:View>
        <asp:View ID="View3" runat="server">
            <h4>Summary And Confirmation</h4>
            <table style="width: 64%;">
                <tr>
                    <td style="width: 132px"><strong>Flight Details</strong></td>
                    <td style="width: 241px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 132px">Flight ID:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryFlightId" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Flight Date:</td>
                    <td style="width: 241px">
                        <asp:Label ID="SummaryFlightDate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Flight Price:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryFlightPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Seat Selection:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summarySeatSelection" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px"><strong>Card Details:</strong></td>
                    <td style="width: 241px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 132px">Name on Card:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryCardName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Card Number:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryCardNumber" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Card Type:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryCardType" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Card Expiry Date:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryCardExpDate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">Card Verification:</td>
                    <td style="width: 241px">
                        <asp:Label ID="summaryCardVerification" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        <asp:Button ID="updateGlobalSeats" runat="server" Text="Confirm" CommandArgument="View4" CommandName="SwitchViewByID" OnClick="updateGlobalSeats_Click" />
        
            </asp:View>
        <asp:View ID="View4" runat="server">
            <h4>Booking Successful!</h4>

        </asp:View>
            </asp:MultiView>
    </div>
        
        </asp:Content>

