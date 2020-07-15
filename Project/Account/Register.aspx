<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <table>
            <tr>
                <th colspan="3">Personal Details</th>
            </tr>
            <tr>
                <!--The first name textbox-->
                <td class="labelCell">First Name: </td>
                <td>
                    <asp:TextBox
                        ID="FirstName"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <!--Sets the boundaries for acceptable characters/letters-->
                    <asp:RegularExpressionValidator
                        runat="server"
                        ControlToValidate="FirstName"
                        Display="Dynamic"
                        ErrorMessage="Error: There are invalid characters"
                        ValidationExpression="^[a-zA-Z][a-zA-Z-']+$">
                    </asp:RegularExpressionValidator>
                    <!--Sets the field to 'required' status-->
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="FirstName"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--The last name textbox-->
                <td class="labelCell">Last Name: </td>
                <td>
                    <asp:TextBox
                        ID="LastName"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RegularExpressionValidator
                        runat="server"
                        ControlToValidate="LastName"
                        ErrorMessage="Error: There are invalid characters"
                        Display="Dynamic"
                        ValidationExpression="^[a-zA-Z][a-zA-Z-']+$">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="LastName"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--The date of birth textbox-->
                <td class="labelCell">Date of Birth (dd/mm/yyyy): </td>
                <td>
                    <asp:TextBox
                        ID="DOB"
                        runat="server">
                    </asp:TextBox>
                </td>
                <!--Checks the date range of the user input-->
                <td class="errorMsg">
                    <asp:CompareValidator runat="server" Operator="LessThan" ErrorMessage="The date must be before today." ControlToValidate="DOB" type="Date" ValueToCompare="<%# DateTime.Today.ToShortDateString() %>" />
                    <!--Compares the user input with the allowable range-->
                    <asp:CompareValidator
                        ID="DOBCompare"
                        runat="server"
                        Type="Date"
                        Operator="DataTypeCheck"
                        ControlToValidate="DOB"
                        Display="Dynamic">
                    </asp:CompareValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="DOB"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Address input field-->
                <td class="labelCell">Address: </td>
                <td>
                    <asp:TextBox
                        ID="Address"
                        runat="server"
                        Height="22px">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Address"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Suburb input field-->
                <td class="labelCell">Suburb: </td>
                <td>
                    <asp:TextBox
                        ID="Suburb"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Suburb"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--The State choice field-->
                <td class="labelCell">State: </td>
                <td>
                    <asp:DropDownList ID="State" runat="server">
                        <asp:ListItem>NSW</asp:ListItem>
                        <asp:ListItem>VIC</asp:ListItem>
                        <asp:ListItem>ACT</asp:ListItem>
                        <asp:ListItem>QLD</asp:ListItem>
                        <asp:ListItem>TAS</asp:ListItem>
                        <asp:ListItem>SA</asp:ListItem>
                        <asp:ListItem>NT</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <!--Sets the field to 'required' status-->
                <td class="errorMsg">
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="State"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="State"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Postcode input field-->
                <td class="labelCell">Postcode: </td>
                <td>
                    <asp:TextBox
                        ID="Postcode"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RegularExpressionValidator
                        runat="server"
                        ControlToValidate="Postcode"
                        ErrorMessage="Error: Only 4 numbers allowed, no spaces or hyphens"
                        Display="Dynamic"
                        ValidationExpression="^[0-9]{4}$">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Postcode"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Phone input field-->
                <td class="labelCell">Phone: </td>
                <td>
                    <asp:TextBox
                        ID="Phone"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RegularExpressionValidator
                        runat="server"
                        ControlToValidate="Phone"
                        ErrorMessage="Error: Only 10 numbers allowed"
                        Display="Dynamic"
                        ValidationExpression="^[0-9]{10}$">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Phone"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Email input field-->
                <td class="labelCell">Email: </td>
                <td>
                    <asp:TextBox
                        ID="Email"
                        runat="server">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RegularExpressionValidator
                        runat="server"
                        ControlToValidate="Email"
                        ErrorMessage="Error: Not valid email format (e.g. Tong.Ji@example.com)"
                        Display="Dynamic"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Email"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelCell">Meal Preference:
                    <br />
                    (Use Ctrl + Left Click to select multiple options)
                </td>
                <td>
                    <asp:ListBox
                        ID="MealPref"
                        runat="server"
                        SelectionMode="Multiple">
                        <asp:ListItem>Western</asp:ListItem>
                        <asp:ListItem>Eastern</asp:ListItem>
                        <asp:ListItem>Vegetarian</asp:ListItem>
                        <asp:ListItem>Vegan</asp:ListItem>
                        <asp:ListItem>Glutan-Free</asp:ListItem>
                        <asp:ListItem>Healthy</asp:ListItem>
                        <asp:ListItem>Unhealthy</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="MealPref"
                        ErrorMessage="Error: Please make at least one selection"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th colspan="3">
                    <br />
                    To finalise your registration, please enter and confirm your account password<br />
                    <br />
                </th>
            </tr>
            <tr>
                <td>Password: </td>
                <td>
                    <asp:TextBox
                        ID="Password"
                        runat="server"
                        TextMode="Password">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="Password"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password: </td>
                <td>
                    <asp:TextBox
                        ID="ConfirmPassword"
                        runat="server"
                        TextMode="Password">
                    </asp:TextBox>
                </td>
                <td class="errorMsg">
                    <asp:RequiredFieldValidator
                        runat="server"
                        ControlToValidate="ConfirmPassword"
                        ErrorMessage="Error: This field cannot be left empty"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator
                        runat="server"
                        ControlToCompare="Password"
                        ControlToValidate="ConfirmPassword"
                        ErrorMessage="Error: This password does not match the original password!"
                        Display="Dynamic">
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <br />
                    <asp:Button ID="RegisterUser" runat="server" Text="Register" OnClick="CreateUser_Click" />
                    &nbsp;&nbsp;
          <asp:Button ID="ResetUser" runat="server" Text="Reset" href="~/Account/Login.aspx" />
                </td>
                <td>
                    <asp:Label ID="ErrorMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
