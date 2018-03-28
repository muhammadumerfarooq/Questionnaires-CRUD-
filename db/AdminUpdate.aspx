<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminUpdate.aspx.cs" Inherits="db.AdminUpdate" %>
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
                  
                  $("[id*='UpdateName']").click(function () {

                      $.ajax({
                          
                          type: "POST",
                          url: "AdminUpdate.aspx/UpdateName",
                          data: '{password:"' + $("[id*='pass']").val() + '",username:"' + $("[id*='Name']").val() + '" }',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              $(document).ready(function () {

                  $("[id*='UpdateAge']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "AdminUpdate.aspx/UpdateAge",
                          data: '{password:"' + $("[id*='pass']").val() + '",Age:"' + $("[id*='txtA']").val() + '" }',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                 // alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              $(document).ready(function () {

                  $("[id*='UpdateOcc']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "AdminUpdate.aspx/UpdateOcc",
                          data: '{password:"' + $("[id*='pass']").val() + '",Occ:"' + $("[id*='txtO']").val() + '" }',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              $(document).ready(function () {

                  $("[id*='UpdateInc']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "AdminUpdate.aspx/UpdateInc",
                          data: '{password:"' + $("[id*='pass']").val() + '",Inc:"' + $("[id*='txtI']").val() + '" }',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

        </script>
    
   
    <h3 style="background-color:lightblue; lighting-color:blue;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Admin Page</h3>
    
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>

            <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">

        <tr><td> <h5 style="background-color:lightblue">Enter Password</h5></td>
           
         <td><input type="text" id="pass" placeholder="Enter Password" /></td></tr>
        
        <tr><td> <h5 style="background-color:lightblue">Enter Name</h5></td><td>
  <input type="text" id="Name" placeholder="Enter Name"/></td></tr>

                                  <tr><td> <h5 style="background-color:lightblue">Update Name</h5></td><td>
     <input id="UpdateName" type="button" value="UpdateName" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
        <tr><td> <h5 style="background-color:lightblue">Enter Age</h5></td><td>
  <input type="text" id="txtA" placeholder="Enter Age"/></td></tr>
                                  <tr><td> <h5 style="background-color:lightblue">Update Age</h5></td><td>
     <input id="UpdateAge" type="button" value="UpdateAge" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
        <tr><td> <h5 style="background-color:lightblue">Enter Occupation</h5></td><td>
  <input type="text" id="txtO" placeholder="Enter Occupation"/></td></tr>
                                  <tr><td> <h5 style="background-color:lightblue">Enter Occupation</h5></td><td>
     <input id="UpdateOcc" type="button" value="UpdateOcc" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
        <tr><td> <h5 style="background-color:lightblue">Enter Income</h5></td><td>
  <input type="text" id="txtI" placeholder="Enter Income"/></td></tr>
                          <tr><td> <h5 style="background-color:lightblue">Update Income</h5></td><td>
     <input id="UpdateInc" type="button" value="UpdateInc" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
   </table>
    
        <p></p>
        <p></p>
        <p></p>
        <p></p>    
    </div>
     <p></p>
        <p></p>
        <p></p>
        <p></p>   <p></p>
        <p></p>
        <p></p>
        <p></p>  
</asp:Content>
