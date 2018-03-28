<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserMenu.aspx.cs" Inherits="db.UserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <p>
        <br />
    </p>
    <div>
        <script type="text/javascript">
            $(document).ready(function () {

                ///insert data
                
                $("[id*='LoginUser']").click(function () {
                    $.ajax({
                      //  type: "POST",
                       // window: location = "AdminLogin.aspx"
                        
                        window: location.href = "UserLogin.aspx"

   });

                    });
                });
           
        </script>
        
        <script type="text/javascript">
            $(document).ready(function () {

                $("[id*='SignupUser']").click(function () {
                    $.ajax({
                        //  type: "POST",
                        // window: location = "AdminLogin.aspx"
                        
                        window: location.href = "UserSignup.aspx"

                    });

                });
            });
           

                
           
        </script>
    <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">

        <tr><td> <h4 style="background-color:lightblue">If You Already Have User Account </h4></td><td>
           
            <input id="LoginUser" type="button" value="Login" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> </td></tr>
        
        <tr><td> <h4 style="background-color:lightblue">If You Don't Have User Account</h4></td><td>
           <input id="SignupUser" type="button" value="Signup" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/> 

           
                                                                                                 </td></tr>
           
    </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>

    </div>

</asp:Content>
