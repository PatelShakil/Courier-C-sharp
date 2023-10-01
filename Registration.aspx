<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration | Courier Service</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background:url(https://png.pngtree.com/thumb_back/fh260/background/20220607/pngtree-food-delivery-courier-fast-service-image_1405371.jpg) center/cover no-repeat;">      
      <form id="registrationForm" runat="server">

    <div style ="width:100%;padding:20px;display:flex;flex-direction:column;align-items:center;">
            <h2>Registration</h2>
<div class="container mt-5">
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox class="form-control" ID="txtUsername" runat="server" placeholder="Enter username" />
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage="Username is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
            </div>
            <div class="form-group">
                <label for="txtPhoneNumber">Phone Number:</label>
                <asp:TextBox class="form-control" ID="txtPhoneNumber" runat="server" placeholder="Enter phone number" />
                <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber"
                    ErrorMessage="Phone number is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber"
                    ErrorMessage="Invalid phone number format." Display="Dynamic" ForeColor="Red"
                    ValidationExpression="^\d{10}$" EnableClientScript="False" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="Enter email" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format." Display="Dynamic" ForeColor="Red"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
            </div>
            
    </div>
    
          <asp:Button runat="server" class="btn btn-primary" OnClick="OnRegistrationClick" Text="Register" />
        <div style="height: 200px;"></div>

                   <p>Click here for <a href="http://localhost:26050/Login.aspx">Login</a></p>
    </div>

      </form>
</body>
</html>
