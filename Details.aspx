<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Courier Service Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Add any additional CSS styles for page layout here -->
</head>
<body>
    <div class="container mt-5">
        <div class="row mt-5">
            <div class="col-md-6">
                <asp:Image ID="imgProvider" runat="server" CssClass="img-fluid" />
            </div>
            <div class="col-md-6 mt-5">
                <h2><asp:Label ID="lblName" runat="server" CssClass="text-primary"></asp:Label></h2>
                <p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
                <p><strong>Cost:</strong> <asp:Label ID="lblCost" runat="server"></asp:Label></p>
            </div> 
                <h2 style="width:100%; text-align:center;padding-top:20px">Why Us</h2>

                           <p class="row mt-3"><asp:Label runat="server" ID="whyus"></asp:Label></p>

        </div>
        <div style="height: 450px;"></div>
    </div>
</body>
</html>
