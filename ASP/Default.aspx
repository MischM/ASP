<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%--Username--%>
        Username
        <asp:TextBox ID="username" runat="server" />
        <asp:RequiredFieldValidator ID="rfvUsername" ControlToValidate="username"
            ErrorMessage="Bitte füllen Sie das Feld aus!" runat="server" />
        <asp:CustomValidator ID="cmvUsername" ControlToValidate="username"
            runat="server" ErrorMessage="Not less than 5!"
            OnServerValidate="CheckUsername" />
        <%--Pwd--%>
        Password
        <asp:TextBox TextMode="Password" ID="Passwort01" runat="server" />
        Reenter your Password
        <asp:TextBox TextMode="Password" ID="Passwort02" runat="server" />
        <asp:CompareValidator ID="CompareValidator1"
            ControlToValidate="Passwort01"
            ControlToCompare="Passwort02"
            ErrorMessage="The passwords don't match!"
            Operator="Equal" Type="String"
            runat="server" />
        <%--IP--%>
        IP-Address
        <asp:TextBox ID="ip" runat="server" />
        <asp:RequiredFieldValidator ID="rfvIp" ControlToValidate="ip"
            ErrorMessage="Bitte füllen Sie das Feld aus!" runat="server" />
        <asp:RegularExpressionValidator ID="revIp" runat="server"
            ControlToValidate="ip"
            EnableClientScript="true" ValidationExpression="^(192)\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$"
            ErrorMessage="Invalid IP!" />
        <%--Score--%>
        Score
        <asp:TextBox TextMode="Number" ID="score" runat="server" />
        <asp:CompareValidator ID="cvScore"
            ControlToValidate="score"
            ControlToCompare="highscore"
            ErrorMessage="The score can't be greater than the highscore!"
            Operator="LessThanEqual"
            runat="server" />
        <%--Highscore--%>
        Highscore
        <asp:TextBox TextMode="Number" ID="highscore" runat="server" />
        <asp:RangeValidator ID="rvHS"
            ControlToValidate="highscore" ErrorMessage="Highscore between 1 and 5000!"
            Type="Integer" MinimumValue="1" MaximumValue="5000"
            runat="server" />
        <%--Prime number--%>
        Prime number
        <asp:TextBox ID="prime" TextMode="Number" runat="server" />
        <asp:CustomValidator ID="cmvPrime" ControlToValidate="prime"
            ErrorMessage="Invalid prime!"
            OnServerValidate="CheckPrime" runat="server" />
        <%--Button--%>
        <asp:Button Text="Submit" runat="server" />

    </form>
</body>
</html>
