<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Test.aspx.cs" Inherits="TestApp.Test" %>

<asp:Content runat="server" ID="body" ContentPlaceHolderID="MainContent">
    <form>
        <h1>
            <center>Iframe test</center>
        </h1>
        <div hidden="hidden">
            <asp:Button ID="btnCheckNewActiveDevice" runat="server" OnClick="btnCheckNewActiveDevice_Click" />
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script type="text/javascript" src="Toastr/js/jquery.toast.js"></script>

        <script>
            var myVar = setInterval(myTimer, 5000);
            var btnActive = document.getElementById('btnCheckNewActiveDevice');
            function myTimer() {
                alert('Demo Iframe');
                //btnActive.click();
            }
        </script>
        <script type="text/javascript">
            function ActiveDevice(name, tipo) {
                $.toast({
                    heading: '<b>Online Device</b>',
                    text: "<i class='fa fa-" + "mobile" + "'></i> " + "Android X10" + " is online",
                    //text: 'Android',
                    showHideTransition: 'slide',
                    icon: 'success',
                    position: 'top-right',
                    stack: '10',
                    loader: false,
                    hideAfter: 5000,
                });
                //alert(msg);
            }
        </script>
        <script type="text/javascript">
            function Detection(hora, nombre) {
                $.toast({
                    heading: '<b>Alert !!!</b>',
                    text: "Criminal found /n" + hora + "\n" + nombre,
                    showHideTransition: 'slide',
                    icon: 'warning',
                    position: 'top-right',
                    stack: '10',
                    loader: false,
                    hideAfter: 5000,
                });
            }
        </script>
        <script type="text/javascript">
             function InactiveDevice(name, tipo) {
                 $.toast({
                     heading: '<b>Offline Device</b>',
                     text: "<i class='fa fa-" + tipo + "'></i> " + name + " is offline",
                     //text: 'Android',
                     showHideTransition: 'slide',
                     icon: 'error',
                     position: 'top-right',
                     stack: '10',
                     loader: false,
                     hideAfter: 5000,
                 });
             }
        </script>
        <script type="text/javascript">
            $(document).ready(function (e) {

                $("#btnAzul").click(function (e) {

                    $.toast({
                        heading: 'Info',
                        text: 'Info notification',
                        showHideTransition: 'slide',
                        icon: 'info',
                        position: 'top-right',
                        stack: '10',
                        loader: false,
                        hideAfter: 5000,
                    });
                });
                $("#btnVerde").click(function (e) {

                    $.toast({
                        heading: 'Success',
                        text: 'success notification',
                        showHideTransition: 'slide',
                        icon: 'success',
                        position: 'top-right',
                        stack: '10',
                        loader: false,
                        hideAfter: 5000,
                    });
                });
                $("#btnAmarillo").click(function (e) {

                    $.toast({
                        heading: 'Warning',
                        text: 'Warning notification',
                        showHideTransition: 'slide',
                        icon: 'warning',
                        position: 'top-right',
                        stack: '10',
                        loader: false,
                        hideAfter: 5000,
                    });
                });
                $("#btnRojo").click(function (e) {

                    $.toast({
                        heading: 'Error',
                        text: 'Error notification',
                        showHideTransition: 'slide',
                        icon: 'error',
                        position: 'top-right',
                        stack: '10',
                        loader: false,
                        hideAfter: 5000,
                    });
                });
            });
        </script>
    </form>
</asp:Content>
