<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShowPage.aspx.cs" Inherits="AddShowPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <table>
            
            <tr>
            <td>Show Name</td>
            <td><asp:TextBox ID="ShowNameEntry" runat="server"></asp:TextBox></td>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ShowName" ErrorMessage="Show Name is Required"></asp:RequiredFieldValidator></td>
            </tr>
            
            
            <tr><td>Date</td><td><asp:TextBox ID="ShowDateEntry" runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>Time</td><td><asp:TextBox ID="ShowTimeEntry" runat="server"></asp:TextBox></td><td></td></tr>
            
            <tr><td>Ticket Info</td><td><asp:TextBox ID="ShowTicketInfoEntry" runat="server"></asp:TextBox></td><td></td></tr>
            

            <tr><td>Date Entered</td><td><asp:TextBox ID="ShowDateEnteredEntry" runat="server"></asp:TextBox></td><td></td></tr>
            
              <tr><td>
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /></td>
                <td>
                    <asp:Label ID="errorDisplay" runat="server" Text=""></asp:Label><td></td></td>
            </tr>
             
        </table>




    </div>
    </form>
</body>
</html>
