<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IframePage.aspx.cs" Inherits="TestApp.IframePage" %>
<%@ PreviousPageType VirtualPath="~/Default.aspx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
    <div>
        <h2>Destino</h2>        
        Nombre: <asp:Label ID="lblNombre" runat="server" Text="lblNombre"></asp:Label>
        <p>&nbsp;</p>
        <asp:Label ID="lblHora" runat="server" Text="lblHora"></asp:Label>
    </div>
    </form>
</body>
</html>
