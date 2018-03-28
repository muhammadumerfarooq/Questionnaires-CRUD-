<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="db.AdminMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <p>

    </p>
    <div>
          <script type="text/javascript">
              $(document).ready(function () {

                  $("[id*='UpdateSurvey']").click(function () {
                      $.ajax({
                          //  type: "POST",
                          // window: location = "AdminLogin.aspx"
                        
                          window: location.href = "SurveyUpdate.aspx"

                      });
                      });
                  });
              
              $(document).ready(function () {

                  $("[id*='UpdateAdmin']").click(function () {
                      $.ajax({
                          //  type: "POST",
                          // window: location = "AdminLogin.aspx"

                          window: location.href = "AdminUpdate.aspx"

                      });
                  });
              });
              $(document).ready(function () {

                  $("[id*='ShowSurveyResult']").click(function () {
                      $.ajax({
                          //  type: "POST",
                          // window: location = "AdminLogin.aspx"

                          window: location.href = "SurveyResult.aspx"

                      });
                  });
              });

    
              </script>
    
    
    <h3 style="background-color:lightblue; lighting-color:blue;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Admin Page</h3>
    
        <p></p>
            <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">

        <tr><td> <h5 style="background-color:lightblue">Update Survey Form</h5></td><td>
           
     <input id="UpdateSurvey" type="button" value="UpdateSurvey" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
        
        <tr><td> <h5 style="background-color:lightblue">Update Admin Info</h5></td><td>
  
     <input id="UpdateAdmin" type="button" value="UpdateAdmin" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
  
                      <tr><td> <h5 style="background-color:lightblue">Show Survey Result </h5></td><td>
  
     <input id="ShowSurveyResult" type="button" value="ShowSurveyResult" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
           
            </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>


    </div>
</asp:Content>
