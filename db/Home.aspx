<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="db.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            cursor: pointer;
            margin-left: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <p>
        <br />
    </p>
    <h4 style="background-color:lightblue"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Survey </h4>
    <div>
        
        <script type="text/javascript">

            $(document).ready(function () {

                ///insert data
                
                $("[id*='Admin']").click(function () {
                    $.ajax({
                      //  type: "POST",
                       // window: location = "AdminLogin.aspx"
                        
                        window: location.href = "Menu.aspx"

   });

                    });
                });
           
        </script>
        
        <script type="text/javascript">
            $(document).ready(function () {

                $("[id*='User']").click(function () {
                    $.ajax({
                        //  type: "POST",
                        // window: location = "AdminLogin.aspx"
                        
                        window: location.href = "UserMenu.aspx"

                    });

                });
            });
           

                
           
        </script>
    <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-top:10px;">

        <tr><td> <h4 style="background-color:lightblue">If You Want To Survey As Admin </h4></td><td>
           
            <input id="Admin" type="button" value="Admin" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> </td></tr>
        
        <tr><td> <h4 style="background-color:lightblue">If You Want To Survey As User </h4></td><td>
           <input id="User" type="button" value="User" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/> 

           
                                                                                                 </td></tr>
           
    </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>

    </div>

</asp:Content>
