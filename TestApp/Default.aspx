<%@ Page Title="Home Page" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestApp._Default" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<script type="text/javascript">
    function enviarDatosAFrame(frameNombre) {
        var formulario = document.getElementById('form1');
        formulario.target = frameNombre;

        setTimeout('formularioInicializar(\'' + formulario.id + '\');', 2000);
    }
    function formularioInicializar(formularioNombre) {
        $('#' + formularioNombre).attr('target', '');
    }
      
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".postbackToFrame").click(function () {
            var form = $(this).parents("form:first");
            var formNombre = $(form).attr("id");
            var frameNombre = $(this).data("frameDestino");
            if (frameNombre != null || frameNombre != 'undefined') {

                $(form).attr('target', frameNombre);
            }

            setTimeout('formularioInicializar(\'' + formNombre + '\');', 2000);
        });
    })
</script>


</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Iframes: Basico - Pagina Padre</h2>
    <p>Como enviar el submit del formulario a un iframe contenido en la misma pagina </p>
    
    Ingrese un Nombre: <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static"></asp:TextBox>
        
    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" PostBackUrl="~/IframePage.aspx"  OnClientClick="enviarDatosAFrame('iframePaginaHija');"/>
    
    <asp:Button ID="btnAceptarConjQuery" runat="server" Text="Aceptar (con jQuery)" PostBackUrl="~/IframePage.aspx"  CssClass="postbackToFrame" data-frameDestino="iframePaginaHija"   />

    <iframe id="iframePaginaHija" name="iframePaginaHija" src="IframePage.aspx" width="100%" height="200px"></iframe>
    <p>&nbsp;</p>
    <asp:Label ID="lblHora" runat="server" Text="lblHora"></asp:Label>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>

