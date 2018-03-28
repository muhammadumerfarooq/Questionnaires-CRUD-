<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="db.UserLogin" %>
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

                  $("[id*='LoginUser']").click(function () {

                          var pass = /^[a-zA-Z0-9!@#$%^&*()_]+$/;
                          var is_pass = $('#txtPass').val();
                          //alert(is_name);
                          if (is_pass.length == 0) {
                              $('#pass').text("***"); // This Segment Displays The Validation Rule For All Fields
                              $("#txtPass").focus();
                              return false;
                          

                              //    alert("zero");
                          }
                          else if (is_pass.length < 6|| is_pass.length>10 || !is_pass.match(pass) )
                          {
                              $('#p2').text("*characters size must be 6 to 10*"); // This Segment Displays The Validation Rule For All Fields
                              $("#txtPass").focus();
                              return false;
                          }
                          else {
                              $('#pass').text("");
                              $('#p2').text("");

                              $("#txtPass").focus();
                          }
                          //  $('#contact_Name').on('input', function () {
                          var name_regex = /^[a-zA-Z]+$/;
                          var firstname = $('#txtName').val();
                          
                          if (firstname.length == 0) {
                              $('#name').text("***"); // This Segment Displays The Validation Rule For All Fields
                              $("#txtName").focus();
                              return false;
                          }
                              // Validating Name Field.
                          else if ((firstname.length < 4 || firstname.length > 20 || !firstname.match(name_regex))) {

                              $('#p1').text("* For your name please use alphabets from size (4-20)*"); // This Segment Displays The Validation Rule For Name
                              $("#txtName").focus();
                              
                              return false;
                          }
                          else {
                              $('#name').text("");
                              $('#p1').text("");

                              $("#txtName").focus();

                          }

                      $.ajax({
                          type: "POST",
                          url: "UserLogin.aspx/CheckUserData",
                          data: '{password:"' + $("[id*='txtPass']").val() + '",Name:"' + $("[id*='txtName']").val() + '" }',
                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Saved Succesfully');
                                  window.location.href = 'UserSurvey.aspx?val=' + $("[id*='txtPass']").val();
                              }
                              else {
                                  alert('Not Found');
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
            <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">

        <tr><td> <h5 style="background-color:lightblue">Enter Password</h5></td><td>
           
         <input type="text" id="txtPass"/></td>
            <td>
                <p id="pass" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                      <p id="p2" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            </td>
        </tr>
        
        <tr><td> <h5 style="background-color:lightblue">Enter Name</h5></td><td>
  <input type="text" id="txtName"/></td>
            
            <td class="auto-style11">  <p id="name" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                  <p id="p1" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            </td>
        </tr>
        
                     <tr><td> <h5 style="background-color:lightblue">Enter Submit</h5></td><td>
     <input id="LoginUser" type="button" value="button" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
            </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>


    </div>
</asp:Content>
