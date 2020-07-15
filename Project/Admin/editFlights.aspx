<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editFlights.aspx.cs" Inherits="Project.Admin.editFlights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
        <ContentTemplate>

            <h2>Edit Flights</h2>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="flightid" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF; color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="flightidLabel" runat="server" Text='<%# Eval("flightid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="flighttimeLabel" runat="server" Text='<%# Eval("flighttime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="flightidTextBox" runat="server" MaxLength="5" Text='<%# Eval("flightid") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="flightidTextBox" FilterType="Custom, Numbers" FilterMode="ValidChars" ValidChars="RA" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="flightidTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="flightidTextBox" ErrorMessage="Flight ID must begin with 'RA' and end with three digits." ValidationExpression="^RA\d\d\d$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="flighttimeTextBox" runat="server" MaxLength="8" Text='<%# Bind("flighttime") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="flighttimeTextBox" FilterType="Numbers, Custom" FilterMode="ValidChars" ValidChars=":" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="flighttimeTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="flighttimeTextBox" ErrorMessage="Flight time must be in the format 'hh:mm:ss'." ValidationExpression="^\d\d:\d\d:\d\d$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="sourceTextBox" FilterType="LowercaseLetters,UppercaseLetters" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="sourceTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="sourceTextBox" ErrorMessage="Source must be 'Sydney', 'Canberra', 'Newcastle', 'Narrabri', 'Bourke', 'Bendigo' or 'Dubbo'." ValidationExpression="(Sydney|Canberra|Newcastle|Narrabri|Bourke|Bendigo|Dubbo)"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="sourceTextBox" ControlToCompare="destinationTextBox" Operator="NotEqual" ErrorMessage="Source must not be the same as destination."></asp:CompareValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" TargetControlID="destinationTextBox" FilterType="LowercaseLetters,UppercaseLetters" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="destinationTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="destinationTextBox" ErrorMessage="Destination must be 'Sydney', 'Canberra', 'Newcastle', 'Narrabri', 'Bourke', 'Bendigo' or 'Dubbo'." ValidationExpression="(Sydney|Canberra|Newcastle|Narrabri|Bourke|Bendigo|Dubbo)"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="destinationTextBox" ControlToCompare="sourceTextBox" Operator="NotEqual" ErrorMessage="Destination must not be the same as source."></asp:CompareValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="priceTextBox" runat="server" MaxLength="7" Text='<%# Bind("price") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" TargetControlID="priceTextBox" FilterType="Numbers,Custom" FilterMode="ValidChars" ValidChars="." runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="priceTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="priceTextBox" MinimumValue="1.00" MaximumValue="1000.00" ErrorMessage="Price must be a number between '1.00' and '1000.00'."></asp:RangeValidator>
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                       <td>
                            <asp:TextBox ID="flightidTextBox" runat="server" MaxLength="5" Text='<%# Eval("flightid") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="flightidTextBox" FilterType="Custom, Numbers" FilterMode="ValidChars" ValidChars="RA" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="flightidTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="flightidTextBox" ErrorMessage="Flight ID must begin with 'RA' and end with three digits." ValidationExpression="^RA\d\d\d$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="flighttimeTextBox" runat="server" MaxLength="8" Text='<%# Bind("flighttime") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="flighttimeTextBox" FilterType="Numbers, Custom" FilterMode="ValidChars" ValidChars=":" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="flighttimeTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="flighttimeTextBox" ErrorMessage="Flight time must be in the format 'hh:mm:ss'." ValidationExpression="^\d\d:\d\d:\d\d$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="sourceTextBox" FilterType="LowercaseLetters,UppercaseLetters" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="sourceTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="sourceTextBox" ErrorMessage="Source must be 'Sydney', 'Canberra', 'Newcastle', 'Narrabri', 'Bourke', 'Bendigo' or 'Dubbo'." ValidationExpression="(Sydney|Canberra|Newcastle|Narrabri|Bourke|Bendigo|Dubbo)"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="sourceTextBox" ControlToCompare="destinationTextBox" Operator="NotEqual" ErrorMessage="Source must not be the same as destination."></asp:CompareValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" TargetControlID="destinationTextBox" FilterType="LowercaseLetters,UppercaseLetters" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="destinationTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="destinationTextBox" ErrorMessage="Destination must be 'Sydney', 'Canberra', 'Newcastle', 'Narrabri', 'Bourke', 'Bendigo' or 'Dubbo'." ValidationExpression="(Sydney|Canberra|Newcastle|Narrabri|Bourke|Bendigo|Dubbo)"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="destinationTextBox" ControlToCompare="sourceTextBox" Operator="NotEqual" ErrorMessage="Destination must not be the same as source."></asp:CompareValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="priceTextBox" runat="server" MaxLength="7" Text='<%# Bind("price") %>' />
                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" TargetControlID="priceTextBox" FilterType="Numbers,Custom" FilterMode="ValidChars" ValidChars="." runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="priceTextBox" ErrorMessage="Please fill in this field."></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="priceTextBox" MinimumValue="1.00" MaximumValue="1000.00" ErrorMessage="Price must be a number between '1.00' and '1000.00'."></asp:RangeValidator>
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF; color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="flightidLabel" runat="server" Text='<%# Eval("flightid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="flighttimeLabel" runat="server" Text='<%# Eval("flighttime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">flightid</th>
                                        <th runat="server">flighttime</th>
                                        <th runat="server">source</th>
                                        <th runat="server">destination</th>
                                        <th runat="server">price</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="flightidLabel" runat="server" Text='<%# Eval("flightid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="flighttimeLabel" runat="server" Text='<%# Eval("flighttime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Flights] WHERE [flightid] = @flightid" InsertCommand="INSERT INTO [Flights] ([flightid], [flighttime], [source], [destination], [price]) VALUES (@flightid, @flighttime, @source, @destination, @price)" SelectCommand="SELECT [flightid], [flighttime], [source], [destination], [price] FROM [Flights]" UpdateCommand="UPDATE [Flights] SET [flighttime] = @flighttime, [source] = @source, [destination] = @destination, [price] = @price WHERE [flightid] = @flightid">
        <DeleteParameters>
            <asp:Parameter Name="flightid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="flightid" Type="String" />
            <asp:Parameter DbType="Time" Name="flighttime" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Time" Name="flighttime" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="flightid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
