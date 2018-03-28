<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SurveyUpdate.aspx.cs" Inherits="db.SurveyUpdate" %>
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
                  
                  $("[id*='UpdateQ1']").click(function () {

                      $.ajax({
                          
                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ1",
                          data: '{Q1:"' + $("[id*='Q1']").val() + '" , Q1a:"' + $("[id*='Q1a']").val() + '",Q1b:"' + $("[id*='Q1b']").val() + '",Q1c:"' + $("[id*='Q1c']").val() + '",Q1d:"' + $("[id*='Q1d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                            //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                          //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

               ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ2']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ2",
                          data: '{Q2:"' + $("[id*='Q2']").val() + '" , Q2a:"' + $("[id*='Q2a']").val() + '",Q2b:"' + $("[id*='Q2b']").val() + '",Q2c:"' + $("[id*='Q2c']").val() + '",Q2d:"' + $("[id*='Q2d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });


              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ3']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ3",
                          data: '{Q3:"' + $("[id*='Q3']").val() + '" , Q3a:"' + $("[id*='Q3a']").val() + '",Q3b:"' + $("[id*='Q3b']").val() + '",Q3c:"' + $("[id*='Q3c']").val() + '",Q3d:"' + $("[id*='Q3d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });


              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ4']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ4",
                          data: '{Q4:"' + $("[id*='Q4']").val() + '" , Q4a:"' + $("[id*='Q4a']").val() + '",Q4b:"' + $("[id*='Q4b']").val() + '",Q4c:"' + $("[id*='Q4c']").val() + '",Q4d:"' + $("[id*='Q4d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ5']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ5",
                          data: '{Q5:"' + $("[id*='Q5']").val() + '" , Q5a:"' + $("[id*='Q5a']").val() + '",Q5b:"' + $("[id*='Q5b']").val() + '",Q5c:"' + $("[id*='Q5c']").val() + '",Q5d:"' + $("[id*='Q5d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ6']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ6",
                          data: '{Q6:"' + $("[id*='Q6']").val() + '" , Q6a:"' + $("[id*='Q6a']").val() + '",Q6b:"' + $("[id*='Q6b']").val() + '",Q6c:"' + $("[id*='Q6c']").val() + '",Q6d:"' + $("[id*='Q6d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });


              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ7']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ7",
                          data: '{Q7:"' + $("[id*='Q7']").val() + '" , Q7a:"' + $("[id*='Q7a']").val() + '",Q7b:"' + $("[id*='Q7b']").val() + '",Q7c:"' + $("[id*='Q7c']").val() + '",Q7d:"' + $("[id*='Q7d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ8']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ8",
                          data: '{Q8:"' + $("[id*='Q8']").val() + '" , Q8a:"' + $("[id*='Q8a']").val() + '",Q8b:"' + $("[id*='Q8b']").val() + '",Q8c:"' + $("[id*='Q8c']").val() + '",Q8d:"' + $("[id*='Q8d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });


              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ9']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ9",
                          data: '{Q9:"' + $("[id*='Q9']").val() + '" , Q9a:"' + $("[id*='Q9a']").val() + '",Q9b:"' + $("[id*='Q9b']").val() + '",Q9c:"' + $("[id*='Q9c']").val() + '",Q9d:"' + $("[id*='Q9d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              ///////////////////////////////////////////////

              $(document).ready(function () {

                  $("[id*='UpdateQ10']").click(function () {

                      $.ajax({

                          type: "POST",
                          url: "SurveyUpdate.aspx/UpdateQ10",
                          data: '{Q10:"' + $("[id*='Q10']").val() + '" , Q10a:"' + $("[id*='Q10a']").val() + '",Q10b:"' + $("[id*='Q10b']").val() + '",Q10c:"' + $("[id*='Q10c']").val() + '",Q10d:"' + $("[id*='Q10d']").val() + '"}',

                          //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                          contentType: "application/json; charset=utf-8",
                          success: function (response) {
                              if (response.d == true) {
                                  alert('Updated Succesfully');
                              }
                              else {
                                  //  alert($("[id*='pass']").val() + " " + $("[id*='Name']").val());
                                  //      alert($("[id*='Q1']").val())
                                  alert('Not Updated ');
                              }
                          },
                          error: function () {
                              //    alert($("[id*='Q1']").val())
                              alert('Connection error, please retry');
                          }
                      });
                  });
              });

              $(document).ready(function () {

                  $("[id*='ShowQ1']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ1",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {
                             // $("[id*=table]").empty();
                             // for (var i = 0; i < data.d.length; i++) {
                                  /*$("[id*=Q1]").append(data.d[i].Q);
                                  $("[id*=Q1a]").append(data.d[i].Qa);
                                  $("[id*=Q1b]").append(data.d[i].Qb);
                                  $("[id*=Q1c]").append(data.d[i].Qc);
                                  $("[id*=Q1d]").append(data.d[i].Qd);
                                  */

                                  //$("[id*=table]").insertAfter("<tr><td>" + data.d[i].Q1 + "</td></tr><tr><td>" + Q1a.append.data.d[i].Q1a + "</tr></td><tr><td>" + append.data.d[i].Q1b + "</tr></td><tr><td>" +append.data.d[i].Q1c + "</tr></td><tr><td>" + append.data.d[i].Q1d + "</tr></td>");

                             // $("[id*=table]").append($("[id*='Q1']").val=data.d[0].Q);
                              $('#Q1').val(data.d[0].Q);
                              $('#Q1a').val(data.d[0].Qa);
                              $('#Q1b').val(data.d[0].Qb);
                              $('#Q1c').val(data.d[0].Qc);
                              $('#Q1d').val(data.d[0].Qd);

                           //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ2']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ2",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {
                              
                              $('#Q2').val(data.d[0].Q);
                              $('#Q2a').val(data.d[0].Qa);
                              $('#Q2b').val(data.d[0].Qb);
                              $('#Q2c').val(data.d[0].Qc);
                              $('#Q2d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ3']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ3",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q3').val(data.d[0].Q);
                              $('#Q3a').val(data.d[0].Qa);
                              $('#Q3b').val(data.d[0].Qb);
                              $('#Q3c').val(data.d[0].Qc);
                              $('#Q3d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });


              $(document).ready(function () {

                  $("[id*='ShowQ4']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ4",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q4').val(data.d[0].Q);
                              $('#Q4a').val(data.d[0].Qa);
                              $('#Q4b').val(data.d[0].Qb);
                              $('#Q4c').val(data.d[0].Qc);
                              $('#Q4d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ5']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ5",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q5').val(data.d[0].Q);
                              $('#Q5a').val(data.d[0].Qa);
                              $('#Q5b').val(data.d[0].Qb);
                              $('#Q5c').val(data.d[0].Qc);
                              $('#Q5d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ6']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ6",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q6').val(data.d[0].Q);
                              $('#Q6a').val(data.d[0].Qa);
                              $('#Q6b').val(data.d[0].Qb);
                              $('#Q6c').val(data.d[0].Qc);
                              $('#Q6d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ7']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ7",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q7').val(data.d[0].Q);
                              $('#Q7a').val(data.d[0].Qa);
                              $('#Q7b').val(data.d[0].Qb);
                              $('#Q7c').val(data.d[0].Qc);
                              $('#Q7d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });


              $(document).ready(function () {

                  $("[id*='ShowQ8']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ8",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q8').val(data.d[0].Q);
                              $('#Q8a').val(data.d[0].Qa);
                              $('#Q8b').val(data.d[0].Qb);
                              $('#Q8c').val(data.d[0].Qc);
                              $('#Q8d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ9']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ9",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q9').val(data.d[0].Q);
                              $('#Q9a').val(data.d[0].Qa);
                              $('#Q9b').val(data.d[0].Qb);
                              $('#Q9c').val(data.d[0].Qc);
                              $('#Q9d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

              $(document).ready(function () {

                  $("[id*='ShowQ10']").click(function () {

                      $.ajax({
                          type: "POST",
                          url: "SurveyUpdate.aspx/ShowQ10",
                          data: '{}',
                          contentType: "application/json; charset=utf-8",
                          success: function (data) {

                              $('#Q10').val(data.d[0].Q);
                              $('#Q10a').val(data.d[0].Qa);
                              $('#Q10b').val(data.d[0].Qb);
                              $('#Q10c').val(data.d[0].Qc);
                              $('#Q10d').val(data.d[0].Qd);

                              //  alert(data.d[0].Q);
                              //}
                          },
                          error: function () {
                              alert('Connection error, please retry');
                          }
                      });
                  });

              });

        </script>
    
   
    <h2 style="background-color:lightblue; lighting-color:blue;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Survey Page</h2>
    
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>

            <table id="table" class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">

        <tr><td> 
            
            <h3 style="background-color:lightblue">Q1:</h3></td>
           
         <td><input type="text" id="Q1"/>
               
         </td></tr>
            <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q1a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q1b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q1c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q1d"/>
                
         </td>
                </tr>

                            <tr><td> <h3 style="background-color:lightblue">Q1 Menu</h3></td><td>
                                
     <input id="ShowQ1" type="button" value="ShowQ1" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

     <input id="UpdateQ1" type="button" value="UpdateQ1" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

     <input id="DeleteQ1" type="button" value="DeleteQ1" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                       </td></tr>
   
        <tr><td> <h3 style="background-color:lightblue">Q2:</h3></td><td>
  <input type="text" id="Q2" /></td></tr>
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q2a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q2b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q2c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q2d"/>
                
         </td>
                </tr>

                                  <tr><td> <h3 style="background-color:lightblue">Q2 Menu</h3></td><td>
    
                                      
     <input id="ShowQ2" type="button" value="ShowQ2" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                       <input id="UpdateQ2" type="button" value="UpdateQ2" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ2" type="button" value="DeleteQ2" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                   </td></tr>
   
        <tr><td> <h3 style="background-color:lightblue">Q3:</h3></td><td>
  <input type="text" id="Q3"/></td></tr>
     <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q3a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q3b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q3c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q3d"/>
                
         </td>
                </tr>

                                               <tr><td> <h3 style="background-color:lightblue">Q3 Menu</h3></td><td>
     
     <input id="ShowQ3" type="button" value="ShowQ3" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                   <input id="UpdateQ3" type="button" value="UpdateQ3" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ3" type="button" value="DeleteQ3" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                   </td></tr>
   
        <tr><td> <h3 style="background-color:lightblue">Q4:</h3></td><td>
  <input type="text" id="Q4" /></td></tr>
  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q4a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q4b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q4c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q4d"/>
                
         </td>
                </tr>

                                  <tr><td> <h3 style="background-color:lightblue">Q4 Menu:</h3></td><td>
    
                                      
     <input id="ShowQ4" type="button" value="ShowQ4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                       <input id="UpdateQ4" type="button" value="UpdateQ4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ4" type="button" value="DeleteQ4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                    </td></tr>
   
        <tr><td> <h3 style="background-color:lightblue">Q5:</h3></td><td>
  <input type="text" id="Q5"/></td></tr>
     <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q5a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q5b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q5c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q5d"/>
                
         </td>
                </tr>

                                       <tr><td> <h3 style="background-color:lightblue">Q5 Menu:</h3></td><td>
   
                                           
     <input id="ShowQ5" type="button" value="ShowQ5" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                             <input id="UpdateQ5" type="button" value="UpdateQ5" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ5" type="button" value="DeleteQ5" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr>
   
                     <tr><td> <h3 style="background-color:lightblue">Q6:</h3></td><td>
  <input type="text" id="Q6"/></td></tr>
                   
                
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q6a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q6b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q6c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q6d"/>
                
         </td>
                </tr>

                       <tr><td> <h3 style="background-color:lightblue">Q6 Menu:</h3></td><td>
     
                           
     <input id="ShowQ6" type="button" value="ShowQ6" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                           <input id="UpdateQ6" type="button" value="UpdateQ6" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ6" type="button" value="DeleteQ6" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr>
   
                                  <tr><td> <h3 style="background-color:lightblue">Q7:</h3></td><td>
  <input type="text" id="Q7"/></td></tr>
   
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q7a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q7b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q7c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q7d"/>
                
         </td>
                </tr>

                                       <tr><td> <h3 style="background-color:lightblue">Q7 Menu:</h3></td><td>
     
     <input id="ShowQ7" type="button" value="ShowQ7" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                           <input id="UpdateQ7" type="button" value="UpdateQ7" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ7" type="button" value="DeleteQ7" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr>
   
                    <tr><td> <h3 style="background-color:lightblue">Q8:</h3></td><td>
  <input type="text" id="Q8"/></td></tr>
  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q8a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q8b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q8c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q8d"/>
                
         </td>
                </tr>

                          <tr><td> <h3 style="background-color:lightblue">Q8 Menu:</h3></td><td>
 
     <input id="ShowQ8" type="button" value="ShowQ8" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                  <input id="UpdateQ8" type="button" value="UpdateQ8" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ8" type="button" value="DeleteQ8" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>
   

                                 <tr><td> <h3 style="background-color:lightblue">Q9:</h3></td><td>
  <input type="text" id="Q9"/></td></tr>
                     
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q9a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q9b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q9c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q9d"/>
                
         </td>
                </tr>

                
                     <tr><td> <h3 style="background-color:lightblue">Q9 Menu:</h3></td><td>
     
     <input id="ShowQ9" type="button" value="ShowQ9" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                         <input id="UpdateQ9" type="button" value="UpdateQ9" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ9" type="button" value="DeleteQ9" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>
   

                                 <tr><td> <h3 style="background-color:lightblue">Q10:</h3></td><td>
  <input type="text" id="Q10"/></td></tr>
                         
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <input type="text" id="Q10a"/>
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <input type="text" id="Q10b"/>
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <input type="text" id="Q10c"/>
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <input type="text" id="Q10d"/>
                
         </td>
                </tr>

                 <tr><td> <h3 style="background-color:lightblue">Q10 Menu:</h3></td><td>

                     
     <input id="ShowQ10" type="button" value="ShowQ10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

     <input id="UpdateQ10" type="button" value="UpdateQ10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ10" type="button" value="DeleteQ10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>
   
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
