<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="App_Track_Final.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />
    <title>AMT</title>
</head>
<body class="body1">
    <form id="form1" runat="server">
        <div class="center"><p style="text-align:center">Bem-Vindo ao Automation Mobile Tracker</p></div>

        <div class="center2">
            <p style="text-align:center">Login</p>
            <input class="center-block  " type="text" id="nif_mecanico" name="nif_mecanico" placeholder="NIF" style="text-align:center" /><br />
            <input class="center-block" type="password" id="password" name="password" placeholder="Password" style=" text-align:center;"  />
            <asp:Button ID="Button1" runat="server" Text="Button" Height="39px" OnClick="Button1_Click" Width="87px"/>
            
        </div>
    </form>
</body>
</html>
