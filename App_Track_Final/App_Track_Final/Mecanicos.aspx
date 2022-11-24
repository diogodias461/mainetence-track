<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mecanicos.aspx.cs" Inherits="App_Track_Final.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="stylesheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body class="body1">
    <form id="form1" runat="server">
        
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Mecanico] ORDER BY [nome_mecanico]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" class="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="nif_mecanico" DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="nif_mecanico" HeaderText="NIF" ReadOnly="True" SortExpression="nif_mecanico" />
                <asp:BoundField DataField="nome_mecanico" HeaderText="Nome" SortExpression="nome_mecanico" />
                <asp:BoundField DataField="morada_mecanico" HeaderText="Morada" SortExpression="morada_mecanico" />
            </Columns>
        </asp:GridView>
        
        
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="DELETE * FROM [Mecanico]
            WHERE nif_mecanico = @nif_mecanico">
            <SelectParameters>
                <asp:Parameter Name="nif_mecanico" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        
        
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        
        
        
    </form>
</body>
</html>
