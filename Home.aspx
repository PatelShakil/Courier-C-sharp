<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">

    
    <div class="container mt-5 text-center">
        <h2 class="text-center">Courier Services Providers</h2>
              <asp:Label ID="username" runat="server" Width="100%"></asp:Label>
<h2 style="width:100%;text-align:center;padding:20px;"><a href="Login.aspx"><asp:Label runat="server" ID="errorText"></asp:Label></a></h2>
        <div class="row">
            <asp:Repeater ID="rptServices" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <div class="col-md-4 mt-5" style="height: 400px;">
                        <div class="card mb-4 mt-3" style="height: 400px;">
                            <img src='<%# Eval("image") %>' alt='<%# Eval("name") %>' class="card-img-top" style="height: 200px;" />
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("name") %></h5>
                                <p class="card-text"><%# Eval("description") %></p>
   <asp:Button runat="server" ID="btnViewDetails" Text="View Details" CssClass="btn btn-primary"
                    OnClick="btnViewDetails_Click" CommandArgument='<%# Eval("id") + ";" %>' />
                                        </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div style="height: 450px;"></div>
    </div>

    </form>
</body>
</html>
