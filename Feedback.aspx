<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Provide Your Feedback</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                            <div class="form-group">
                                <label for="txtName">Your Name:</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
                
                            </div>
                            <div class="form-group">
                                <label for="txtEmail">Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" ReadOnly="true" CssClass="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtFeedback">Feedback:</label>
                                <asp:TextBox ID="txtFeedback" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFeedback"
                    ErrorMessage="Feedback is required." Display="Dynamic" ForeColor="Red" EnableClientScript="False" />
                </div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
        </form>
</body>
</html>
