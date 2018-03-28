<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminSignupaspx.aspx.cs" Inherits="db.AdminSignupaspx" %>
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

                  $("[id*='SigupAdmin']").click(function () {


                      //////////////// Password Validation //////////////////

                      var pass = /^[a-zA-Z0-9!@#$%^&*()_]+$/;
                      var is_pass = $('#txtPass').val();

                      if (is_pass.length == 0) {
                          $('#pass').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtPass").focus();
                          return false;


                          //    alert("zero");
                      }
                      else if (is_pass.length < 5 || is_pass.length > 10 || !is_pass.match(pass)) {
                          $('#p2').text("*characters size must be 6 to 10*"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtPass").focus();
                          return false;
                      }
                      else {
                          $('#pass').text("");
                          $('#p2').text("");

                          $("#txtPass").focus();
                      }
                      ///////////////////////////////////////////////////////

                      ////////////////////  Name Validation /////////////////

                      var name_regex = /^[a-zA-Z]+$/;
                      var firstname = $('#txtName').val();

                      if (firstname.length == 0) {
                          $('#name').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtName").focus();
                          return false;
                      }
                          // Validating Name Field.
                      else if ((firstname.length < 4 || firstname.length > 20 || !firstname.match(name_regex))) {

                          $('#p1').text("* For your name please use alphabets without spaces from size (4-20)*"); // This Segment Displays The Validation Rule For Name
                          $("#txtName").focus();

                          return false;
                      }
                      else {
                          $('#name').text("");
                          $('#p1').text("");

                          $("#txtName").focus();

                      }
                      ///////////////////////////////////


                      ////////////// Age Validation ////////////////////

                      var age = $('#txtAge').val();

                      if (age.length == 0) {
                          $('#age').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtAge").focus();
                          return false;
                      }
                      else if (age < 18 || age > 60) {

                          $('#age').text("* Age must be between 18 to 60*"); // This Segment Displays The Validation Rule For Name
                          $("#txtAge").focus();

                          return false;
                      }
                      else {
                          $('#age').text("");
                          $("#txtAge").focus();
                      }

                      ///////////////////////////


                      ///// occupation validation //////////////////////////////

                      var occ = $('#txtOcc').val();
                      var occ_v = /^[a-zA-Z]+$/;

                      if (occ.length == 0) {
                          $('#occ').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtOcc").focus();
                          return false;
                      }
                          // Validating Name Field.
                      else if (!(occ.match(occ)) || (occ.length < 6 || occ.length > 20)) {

                          $('#p4').text("* Aplhabetic character only size(6-20) *"); // This Segment Displays The Validation Rule For Name
                          $("#txtOcc").focus();

                          return false;
                      }
                      else {
                          $('#occ').text("");
                          $('#p4').text("");

                          $("#txtOcc").focus();
                      }

                      ///////////////////////////////////////////////////

                      var inc = $('#txtInc').val();

                      if (occ.length == 0) {
                          $('#inc').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#txtInc").focus();
                          return false;
                      }
                          // Validating Name Field.
                      else if (inc < 1000 || inc > 200000) {

                          $('#p5').text("* income must be between 1k to 200k  *"); // This Segment Displays The Validation Rule For Name
                          $("#txtInc").focus();

                          return false;
                      }
                      else {
                          $('#inc').text("");
                          $('#p5').text("");

                          $("#txtInc").focus();
                      }
                      /////////// Income Validation /////////////////////


                      //////////////////////////////////////



                      $.ajax({
                          type: "POST",
                          url: "AdminSignupaspx.aspx/saveAdminData",
    data: '{password:"' + $("[id*='txtPass']").val() + '",username:"' + $("[id*='txtName']").val() + '", age:"' + $("[id*='txtAge']").val() + '", occupation:"' + $("[id*='txtOcc']").val() + '", income:"' + $("[id*='txtInc']").val() + '" }',

   //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Saved Succesfully');
                              }
                              else {
                                  alert('Already Have Admin / Move to Login Page ');
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
           
         <input type="text" id="txtPass"
             
             /></td>
              <td>
                <p id="pass" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                      <p id="p2" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            </td>

        </tr>
        
        <tr><td> <h5 style="background-color:lightblue">Enter Name</h5></td><td>
  <input type="text" id="txtName"/></td>
                      <td>
            <p id="name" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                  <p id="p1" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            </td>
  
          

        </tr>

        <tr><td> <h5 style="background-color:lightblue">Enter Age</h5></td><td>
  <input type="text" id="txtAge"/></td>
                <td>
                    <p id="age" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            
                </td>


        </tr>
        <tr><td> <h5 style="background-color:lightblue">Enter Occupation</h5></td><td>
  <input type="text" id="txtOcc"/></td>
                <td>
                    <p id="occ" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                    <p id="p4" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            
                </td>


        </tr>
        <tr><td> <h5 style="background-color:lightblue">Enter Income</h5></td><td>
  <input type="text" id="txtInc"/></td>
            <td>
                    <p id="inc" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                    <p id="p5" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            
                </td>

        </tr>
        
                     <tr><td> <h5 style="background-color:lightblue">Enter Submit</h5></td><td>
     <input id="SigupAdmin" type="button" value="Signup" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/></td></tr>
   
            </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>

        
        <p></p>
        <p></p>
        <p></p>
        <p></p>

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
