<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="db.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
   
     <p>

    </p>
    <div>
          <script type="text/javascript">
             /*  $(document).ready(function () {
                  $('#contact_Pass').on('input', function () {
                      var is_name = $('#contact_Pass').val();
                      //alert(is_name);
                      if (is_name.length == 0) {
                          $('#pass').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#contact_Pass").focus();
                          return false;
                          //    alert("zero");
                      }
                   
                     
                  });
              });
              */
/*              $(document).ready(function () {
                  $('#contact_Name').on('input', function () {
                      var name_regex = /^[a-zA-Z]+$/;
                      var firstname = $('#contact_Name').val();
                      if (firstname.length == 0) {
                          $('#name').text("***"); // This Segment Displays The Validation Rule For All Fields
                          $("#contact_Name").focus();
                          return false;
                      }
                          // Validating Name Field.
                      else if (!firstname.match(name_regex) || firstname.length == 0) {
                          $('#p1').text("* For your name please use alphabets only *"); // This Segment Displays The Validation Rule For Name
                          $("#contact_Name").focus();
                          return false;
                      }
                      //alert(name.value);
                      //  alert(re);
                      var is_true = re.test(name);
                      //alert(is_true);

                      if (is_true) { alert("");}
                      else {

                          alert(" characters must be alphabets")
                      }
                   
                  });
              });
              */
              $(document).ready(function () {



                 // $("[id*='LoginAdmin']").click(function () {
                  $('#LoginAdmin').click(function(){
               
                      var pass = /^[a-zA-Z0-9!@#$%^&*()_]+$/;
                          var is_pass = $('#contact_Pass').val();
                          //alert(is_name);
                          if (is_pass.length == 0) {
                              $('#pass').text("***"); // This Segment Displays The Validation Rule For All Fields
                              $("#contact_Pass").focus();
                              return false;
                          

                              //    alert("zero");
                          }
                          else if (is_pass.length < 5 || is_pass.length>10 || !is_pass.match(pass) )
                          {
                              $('#p2').text("*characters size must be 5 to 10*"); // This Segment Displays The Validation Rule For All Fields
                              $("#contact_Pass").focus();
                              return false;
                          }
                          else {
                              $('#pass').text("");
                              $('#p2').text("");

                              $("#contact_Pass").focus();
                          }
                        //  $('#contact_Name').on('input', function () {
                          var name_regex = /^[a-zA-Z]+$/;
                              var firstname = $('#contact_Name').val();
                          
                              if (firstname.length == 0) {
                                  $('#name').text("***"); // This Segment Displays The Validation Rule For All Fields
                                  $("#contact_Name").focus();
                                  return false;
                              }
                                  // Validating Name Field.
                              else if ((firstname.length < 4 || firstname.length > 20 || !firstname.match(name_regex))) {

                                  $('#p1').text("* For your name please use alphabets from size (4-20)*"); // This Segment Displays The Validation Rule For Name
                                  $("#contact_Name").focus();
                              
                                  return false;
                              }
                              else {
                                  $('#name').text("");
                                  $('#p1').text("");

                                  $("#contact_Name").focus();

                              }
                     
                      $.ajax({
                          type: "POST",
                          url: "AdminLogin.aspx/CheckAdminData",
                          data: '{password:"' + $("[id*='contact_Pass']").val() + '",Name:"' + $("[id*='contact_Name']").val() + '" }',
                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Saved Succesfully');

                                  window: location.href = "AdminMenu.aspx"
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
    <style>
        #contact label{
			display: inline-block;
			width: 100px;
			text-align: right;
		}
		
		#contact div{
			margin-top: 1em;
		}
		textarea{
			vertical-align: top;
			height: 5em;
		}
	
        #contact_submit{
	padding-left: 40px;
        }
                .error{
	display: none;
	margin-left: 10px;
        }	
.error_show{
	color: red;
	margin-left: 10px;
        }
input.invalid{
	border: 2px solid red;
        }

input.valid{
	border: 2px solid green;
         }

        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style4 {
            margin-top: 0em;
            width: 154px;
        }
        .auto-style5 {
            width: 112px;
        }
        .auto-style6 {
            width: 138px;
        }
        .auto-style7 {
            width: 143px;
            margin-top: 0px;
        }
        .auto-style8 {
            width: 144px;
            margin-top: 0px;
        }
        .auto-style9 {
            cursor: pointer;
            margin-left: 10px;
        }

        .auto-style10 {
            width: 498px;
            cursor: pointer;
        }

        .auto-style11 {
            width: 226px;
        }
        .auto-style12 {
            width: 139px;
        }

    </style>

    </div>
           
    <h3 style="background-color:lightblue; lighting-color:blue;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Admin Page</h3>
    
        <p></p>
            <table class="auto-style10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;">

        <tr><td class="auto-style5">
            
             <h5 style="background-color:lightblue">Enter Password</h5></td><td class="auto-style6">
           
       <div class="auto-style4"> <input type="text" id="contact_Pass" required="required" class="auto-style7"/></div> </td>
      <td class="auto-style11">  <p id="pass" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                      <p id="p2" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         <!--    <p id="p3" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
           
      </td></tr>
        <tr><td class="auto-style5"> <h5 style="background-color:lightblue">Enter Name</h5></td><td class="auto-style6"> 
         <div class="auto-style12">  <input type="text" id="contact_Name" class="auto-style8"/></div></td>
            <td class="auto-style11">  <p id="name" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
                  <p id="p1" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
            </td>

        </tr>
        
                     <tr><td class="auto-style5"> <h5 style="background-color:lightblue">Enter Submit</h5></td><td class="auto-style6">
   <div id="contact_submit">
   <input id="LoginAdmin" type="button" value="button" style="border:1px solid black;background-color:lightblue;margin-top:10px;" class="auto-style9"/>
       </div>
       </td></tr> 
           
            </table>
            
            <table id="tabledata" style="border:1px solid black">

            </table>
    
</asp:Content>
