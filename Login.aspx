<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background:url(https://png.pngtree.com/thumb_back/fh260/background/20220607/pngtree-food-delivery-courier-fast-service-image_1405371.jpg) center/cover no-repeat;">  
          <form id="loginForm" runat="server">

    <div style ="width:100%;padding:20px;display:flex;flex-direction:column;align-items:center;">
                <h2>Login</h2>
<div class="container mt-5" >
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
<asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
    ErrorMessage="Password should be at least 8 characters long." Display="Dynamic" ForeColor="Red"
    ValidationExpression="^.{8,}$" EnableClientScript="False" />            </div>
            <div style="height: 40px;"></div>
            </div> 
                    <asp:Button runat="server" class="btn btn-primary " OnClick="OnLoginClick" Text="Login" />
                    <div style="height: 470px;"></div>

                   <p>Click here for <a href="http://localhost:26050/Registration.aspx">Registration</a></p>

    </div>  

          </form>

</body>
</html>
