<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserSurvey.aspx.cs" Inherits="db.UserSurvey" %>
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

                   $("[id*='submit']").click(function () {
                 //      alert($("[id*='Q1_radio_a']").val());
                       if ($("[id*='Q1_radio_a']").val() != "on" && $("[id*='Q1_radio_b']").val() != "on" && $("[id*='Q1_radio_c']").val() != "on" && $("[id*='Q1_radio_d']").val() != "on")
                       {
                           $('#Q1mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q1").focus();
                           return false;
                       }
                       else
                       {

                           $('#Q1mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q1").focus();
                       }
                       if ($("[id*='Q2_radio_a']").val() != "on" && $("[id*='Q2_radio_b']").val() != "on" && $("[id*='Q2_radio_c']").val() != "on" && $("[id*='Q2_radio_d']").val() != "on") {
                           $('#Q2mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q2").focus();
                           return false;
                       }
                       else {

                           $('#Q2mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q2").focus();
                       }
                       if ($("[id*='Q3_radio_a']").val() != "on" && $("[id*='Q3_radio_b']").val() != "on" && $("[id*='Q3_radio_c']").val() != "on" && $("[id*='Q3_radio_d']").val() != "on") {
                           $('#Q3mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q3").focus();
                           return false;
                       }
                       else {

                           $('#Q3mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q3").focus();
                       }
                       if ($("[id*='Q4_radio_a']").val() != "on" && $("[id*='Q4_radio_b']").val() != "on" && $("[id*='Q4_radio_c']").val() != "on" && $("[id*='Q4_radio_d']").val() != "on") {
                           $('#Q4mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q4").focus();
                           return false;
                       }
                       else {

                           $('#Q4mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q4").focus();
                       }
                       if ($("[id*='Q5_radio_a']").val() != "on" && $("[id*='Q5_radio_b']").val() != "on" && $("[id*='Q5_radio_c']").val() != "on" && $("[id*='Q5_radio_d']").val() != "on") {
                           $('#Q5mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q5").focus();
                           return false;
                       }
                       else {

                           $('#Q5mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q5").focus();
                       }
                       if ($("[id*='Q6_radio_a']").val() != "on" && $("[id*='Q6_radio_b']").val() != "on" && $("[id*='Q6_radio_c']").val() != "on" && $("[id*='Q6_radio_d']").val() != "on") {
                           $('#Q6mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q6").focus();
                           return false;
                       }
                       else {

                           $('#Q6mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q6").focus();
                       }
                       if ($("[id*='Q7_radio_a']").val() != "on" && $("[id*='Q7_radio_b']").val() != "on" && $("[id*='Q7_radio_c']").val() != "on" && $("[id*='Q7_radio_d']").val() != "on") {
                           $('#Q7mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q7").focus();
                           return false;
                       }
                       else {

                           $('#Q7mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q7").focus();
                       }
                       if ($("[id*='Q8_radio_a']").val() != "on" && $("[id*='Q8_radio_b']").val() != "on" && $("[id*='Q8_radio_c']").val() != "on" && $("[id*='Q8_radio_d']").val() != "on") {
                           $('#Q8mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q8").focus();
                           return false;
                       }
                       else {

                           $('#Q8mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q8").focus();
                       }
                       if ($("[id*='Q9_radio_a']").val() != "on" && $("[id*='Q9_radio_b']").val() != "on" && $("[id*='Q9_radio_c']").val() != "on" && $("[id*='Q9_radio_d']").val() != "on") {
                           $('#Q9mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q9").focus();
                           return false;
                       }
                       else {

                           $('#Q9mes').text(""); // This Segment Displays The Validation Rule For All Fields
                           $("#Q9").focus();
                       }

                       if ($("[id*='Q10_radio_a']").val() != "on" && $("[id*='Q10_radio_b']").val() != "on" && $("[id*='Q10_radio_c']").val() != "on" && $("[id*='Q10_radio_d']").val() != "on") {
                           $('#Q10mes').text("*Select Any Choice*"); // This Segment Displays The Validation Rule For All Fields
                           $("#Q10").focus();
                           return false;
                       }
                       else
                       {
                           $('#Q1mes').text("");
                           $('#Q2mes').text("");
                           $('#Q3mes').text("");
                           $('#Q4mes').text("");
                           $('#Q5mes').text("");
                           $('#Q7mes').text("");
                           $('#Q8mes').text("");
                           $('#Q9mes').text("");
                           $('#Q10mes').text("");

                       }
                       $.ajax({

                           type: "POST",
                           url: "UserSurvey.aspx/submit",
                           data: '{Q1_radio_a:"' + $("[id*='Q1_radio_a']").val() + '" , Q1_radio_b:"' + $("[id*='Q1_radio_b']").val() + '",Q1_radio_c:"' + $("[id*='Q1_radio_c']").val() + '",Q1_radio_d:"' + $("[id*='Q1_radio_d']").val() + '",Q2_radio_a:"' + $("[id*='Q2_radio_a']").val() + '",Q2_radio_b:"' + $("[id*='Q2_radio_b']").val() + '",Q2_radio_c:"' + $("[id*='Q2_radio_c']").val() + '",Q2_radio_d:"' + $("[id*='Q2_radio_d']").val()
                             +   '",Q3_radio_a:"' + $("[id*='Q3_radio_a']").val() + '" , Q3_radio_b:"' + $("[id*='Q3_radio_b']").val() + '",Q3_radio_c:"' + $("[id*='Q3_radio_c']").val() + '",Q3_radio_d:"' + $("[id*='Q3_radio_d']").val() + '",Q4_radio_a:"' + $("[id*='Q4_radio_a']").val() + '",Q4_radio_b:"' + $("[id*='Q4_radio_b']").val() + '",Q4_radio_c:"' + $("[id*='Q4_radio_c']").val() + '",Q4_radio_d:"' + $("[id*='Q4_radio_d']").val() 
                             +   '",Q5_radio_a:"' + $("[id*='Q5_radio_a']").val() + '" , Q5_radio_b:"' + $("[id*='Q5_radio_b']").val() + '",Q5_radio_c:"' + $("[id*='Q5_radio_c']").val() + '",Q5_radio_d:"' + $("[id*='Q5_radio_d']").val() + '",Q6_radio_a:"' + $("[id*='Q6_radio_a']").val() + '",Q6_radio_b:"' + $("[id*='Q6_radio_b']").val() + '",Q6_radio_c:"' + $("[id*='Q6_radio_c']").val() + '",Q6_radio_d:"' + $("[id*='Q6_radio_d']").val() 
                             +'",Q7_radio_a:"' + $("[id*='Q7_radio_a']").val() + '" , Q7_radio_b:"' + $("[id*='Q7_radio_b']").val() + '",Q7_radio_c:"' + $("[id*='Q7_radio_c']").val() + '",Q7_radio_d:"' + $("[id*='Q7_radio_d']").val() + '",Q8_radio_a:"' + $("[id*='Q8_radio_a']").val() + '",Q8_radio_b:"' + $("[id*='Q8_radio_b']").val() + '",Q8_radio_c:"' + $("[id*='Q8_radio_c']").val() + '",Q8_radio_d:"' + $("[id*='Q8_radio_d']").val() 
                             +'",Q9_radio_a:"' + $("[id*='Q9_radio_a']").val() + '" , Q9_radio_b:"' + $("[id*='Q9_radio_b']").val() + '",Q9_radio_c:"' + $("[id*='Q9_radio_c']").val() + '",Q9_radio_d:"' + $("[id*='Q9_radio_d']").val() + '",Q10_radio_a:"' + $("[id*='Q10_radio_a']").val() + '",Q10_radio_b:"' + $("[id*='Q10_radio_b']").val() + '",Q10_radio_c:"' + $("[id*='Q10_radio_c']").val() + '",Q10_radio_d:"' + $("[id*='Q10_radio_d']").val() 
                             + '"}',

                           //  data: '{idStudent:"' + $("[id*='txtID']").val() + '",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                           contentType: "application/json; charset=utf-8",
                           success: function (response) {
                               if (response.d == true) {
                                   alert('inserted Succesfully');
                               }
                               else {
                                  
                                   alert('Not inserted ');
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
 
                       $.ajax({
                           type: "POST",
                           url: "UserSurvey.aspx/insertdata",
                           data: '{}',
                           contentType: "application/json; charset=utf-8",
                           success: function (data) {
                            //   alert(data.d[0].Q1);
                               if (data.d[0].Q1 == "")
                               {

                                   $('#Q1').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q1a').hide();
                                   $('#Q1b').hide();
                                   $('#Q1c').hide();
                                   $('#Q1d').hide();
                                   $('#Q1_radio_a').hide();
                                   $('#Q1_radio_b').hide();
                                   $('#Q1_radio_c').hide();
                                   $('#Q1_radio_d').hide();


                               }
                               else
                               {
                                   $("#Q1").empty();
                                   $("#Q1").append(data.d[0].Q1);
                                  // $('#Q1').val(data.d[0].Q1);
                                   $("#Q1a").empty();
                                   $("#Q1a").append(data.d[0].Q1a);

                                  // $('#Q1a').val(data.d[0].Q1a);
                                   $('#Q1d').append(data.d[0].Q1d);
                                   $('#Q1b').append(data.d[0].Q1b);
                                   $('#Q1c').append(data.d[0].Q1c);

                               }
                               if (data.d[0].Q2 == "") {

                                   $('#Q2').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q2a').hide();
                                   $('#Q2b').hide();
                                   $('#Q2c').hide();
                                   $('#Q2d').hide();
                                   $('#Q2_radio_a').hide();
                                   $('#Q2_radio_b').hide();
                                   $('#Q2_radio_c').hide();
                                   $('#Q2_radio_d').hide();


                               }
                               else {
                                   $('#Q2').append(data.d[0].Q2);
                                   $('#Q2a').append(data.d[0].Q2a);
                                   $('#Q2d').append(data.d[0].Q2d);
                                   $('#Q2b').append(data.d[0].Q2b);
                                   $('#Q2c').append(data.d[0].Q2c);

                               }
                               if (data.d[0].Q3 == "") {

                                   $('#Q3').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q3a').hide();
                                   $('#Q3b').hide();
                                   $('#Q3c').hide();
                                   $('#Q3d').hide();
                                   $('#Q3_radio_a').hide();
                                   $('#Q3_radio_b').hide();
                                   $('#Q3_radio_c').hide();
                                   $('#Q3_radio_d').hide();


                               }
                               else {
                                   $('#Q3').append(data.d[0].Q3);
                                   $('#Q3a').append(data.d[0].Q3a);
                                   $('#Q3d').append(data.d[0].Q3d);
                                   $('#Q3b').append(data.d[0].Q3b);
                                   $('#Q3c').append(data.d[0].Q3c);

                               }
                               if (data.d[0].Q4 == "") {

                                   $('#Q4').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q4a').hide();
                                   $('#Q4b').hide();
                                   $('#Q4c').hide();
                                   $('#Q4d').hide();
                                   $('#Q4_radio_a').hide();
                                   $('#Q4_radio_b').hide();
                                   $('#Q4_radio_c').hide();
                                   $('#Q4_radio_d').hide();


                               }
                               else {
                                   $('#Q4').append(data.d[0].Q4);
                                   $('#Q4a').append(data.d[0].Q4a);
                                   $('#Q4d').append(data.d[0].Q4d);
                                   $('#Q4b').append(data.d[0].Q4b);
                                   $('#Q4c').append(data.d[0].Q4c);

                               }

                               if (data.d[0].Q5 == "") {

                                   $('#Q5').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q5a').hide();
                                   $('#Q5b').hide();
                                   $('#Q5c').hide();
                                   $('#Q5d').hide();
                                   $('#Q5_radio_a').hide();
                                   $('#Q5_radio_b').hide();
                                   $('#Q5_radio_c').hide();
                                   $('#Q5_radio_d').hide();


                               }
                               else {
                                   $('#Q5').append(data.d[0].Q5);
                                   $('#Q5a').append(data.d[0].Q5a);
                                   $('#Q5d').append(data.d[0].Q5d);
                                   $('#Q5b').append(data.d[0].Q5b);
                                   $('#Q5c').append(data.d[0].Q5c);

                               }

                               if (data.d[0].Q6 == "") {

                                   $('#Q6').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q6a').hide();
                                   $('#Q6b').hide();
                                   $('#Q6c').hide();
                                   $('#Q6d').hide();
                                   $('#Q6_radio_a').hide();
                                   $('#Q6_radio_b').hide();
                                   $('#Q6_radio_c').hide();
                                   $('#Q6_radio_d').hide();


                               }
                               else {
                                   $('#Q6').append(data.d[0].Q6);
                                   $('#Q6a').append(data.d[0].Q6a);
                                   $('#Q6d').append(data.d[0].Q6d);
                                   $('#Q6b').append(data.d[0].Q6b);
                                   $('#Q6c').append(data.d[0].Q6c);

                               }

                               if (data.d[0].Q7 == "") {

                                   $('#Q7').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q7a').hide();
                                   $('#Q7b').hide();
                                   $('#Q7c').hide();
                                   $('#Q7d').hide();
                                   $('#Q7_radio_a').hide();
                                   $('#Q7_radio_b').hide();
                                   $('#Q7_radio_c').hide();
                                   $('#Q7_radio_d').hide();


                               }
                               else {
                                   $('#Q7').append(data.d[0].Q7);
                                   $('#Q7a').append(data.d[0].Q7a);
                                   $('#Q7d').append(data.d[0].Q7d);
                                   $('#Q7b').append(data.d[0].Q7b);
                                   $('#Q7c').append(data.d[0].Q7c);

                               }

                               if (data.d[0].Q8 == "") {

                                   $('#Q8').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q8a').hide();
                                   $('#Q8b').hide();
                                   $('#Q8c').hide();
                                   $('#Q8d').hide();
                                   $('#Q8_radio_a').hide();
                                   $('#Q8_radio_b').hide();
                                   $('#Q8_radio_c').hide();
                                   $('#Q8_radio_d').hide();


                               }
                               else {
                                   $('#Q8').append(data.d[0].Q8);
                                   $('#Q8a').append(data.d[0].Q8a);
                                   $('#Q8d').append(data.d[0].Q8d);
                                   $('#Q8b').append(data.d[0].Q8b);
                                   $('#Q8c').append(data.d[0].Q8c);

                               }
                               if (data.d[0].Q9 == "") {

                                   $('#Q9').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q9a').hide();
                                   $('#Q9b').hide();
                                   $('#Q9c').hide();
                                   $('#Q9d').hide();
                                   $('#Q9_radio_a').hide();
                                   $('#Q9_radio_b').hide();
                                   $('#Q9_radio_c').hide();
                                   $('#Q9_radio_d').hide();


                               }
                               else {
                                   $('#Q9').append(data.d[0].Q9);
                                   $('#Q9a').append(data.d[0].Q9a);
                                   $('#Q9d').append(data.d[0].Q9d);
                                   $('#Q9b').append(data.d[0].Q9b);
                                   $('#Q9c').append(data.d[0].Q9c);

                               }

                               if (data.d[0].Q10 == "") {

                                   $('#Q10').val("Deleted");
                                   //$('#Q1').hide();
                                   $('#Q10a').hide();
                                   $('#Q10b').hide();
                                   $('#Q10c').hide();
                                   $('#Q10d').hide();
                                   $('#Q10_radio_a').hide();
                                   $('#Q10_radio_b').hide();
                                   $('#Q10_radio_c').hide();
                                   $('#Q10_radio_d').hide();


                               }
                               else {
                                   $('#Q10').append(data.d[0].Q10);
                                   $('#Q10a').append(data.d[0].Q10a);
                                   $('#Q10d').append(data.d[0].Q10d);
                                   $('#Q10b').append(data.d[0].Q10b);
                                   $('#Q10c').append(data.d[0].Q10c);

                               }
                           },
                           error: function () {
                               alert('Connection error, please retry');
                           }
                       });
                 });

             //  }


               function deselectQ1a() {
                   document.getElementById("Q1_radio_b").checked = 0;
                   document.getElementById("Q1_radio_c").checked = 0;
                   document.getElementById("Q1_radio_d").checked = 0;
                   document.getElementById("Q1_radio_a").value = "on";

                   document.getElementById("Q1_radio_b").value = 0;
                   document.getElementById("Q1_radio_c").value = 0;
                   document.getElementById("Q1_radio_d").value = 0;
               }
               function deselectQ1b() {

                   document.getElementById("Q1_radio_b").value = "on";
                   document.getElementById("Q1_radio_a").checked = 0;
                   document.getElementById("Q1_radio_c").checked = 0;
                   document.getElementById("Q1_radio_d").checked = 0;

                   document.getElementById("Q1_radio_a").value = 0;
                   document.getElementById("Q1_radio_c").value = 0;
                   document.getElementById("Q1_radio_d").value = 0;

               }
               function deselectQ1c() {

                   document.getElementById("Q1_radio_c").value = "on";
                   document.getElementById("Q1_radio_a").checked = 0;
                   document.getElementById("Q1_radio_b").checked = 0;
                   document.getElementById("Q1_radio_d").checked = 0;

                   document.getElementById("Q1_radio_a").value = 0;
                   document.getElementById("Q1_radio_b").value = 0;
                   document.getElementById("Q1_radio_d").value = 0;

               }
               function deselectQ1d() {

                   document.getElementById("Q1_radio_d").value = "on";
                   document.getElementById("Q1_radio_a").checked = 0;
                   document.getElementById("Q1_radio_b").checked = 0;
                   document.getElementById("Q1_radio_c").checked = 0;

                   document.getElementById("Q1_radio_a").value = 0;
                   document.getElementById("Q1_radio_b").value = 0;
                   document.getElementById("Q1_radio_c").value = 0;

               }
               function deselectQ2a() {
                   document.getElementById("Q2_radio_b").checked = 0;
                   document.getElementById("Q2_radio_c").checked = 0;
                   document.getElementById("Q2_radio_d").checked = 0;

                   document.getElementById("Q2_radio_a").value = "on";

                   document.getElementById("Q2_radio_b").value = 0;
                   document.getElementById("Q2_radio_c").value = 0;
                   document.getElementById("Q2_radio_d").value = 0;

               }
               function deselectQ2b() {
                   document.getElementById("Q2_radio_a").checked = 0;
                   document.getElementById("Q2_radio_c").checked = 0;
                   document.getElementById("Q2_radio_d").checked = 0;

                   document.getElementById("Q2_radio_b").value = "on";
                   document.getElementById("Q2_radio_a").value = 0;
                   document.getElementById("Q2_radio_c").value = 0;
                   document.getElementById("Q2_radio_d").value = 0;

               }
               function deselectQ2c() {
                   document.getElementById("Q2_radio_a").checked = 0;
                   document.getElementById("Q2_radio_b").checked = 0;
                   document.getElementById("Q2_radio_d").checked = 0;

                   document.getElementById("Q2_radio_c").value = "on";
                   document.getElementById("Q2_radio_a").value = 0;
                   document.getElementById("Q2_radio_b").value = 0;
                   document.getElementById("Q2_radio_d").value = 0;

               }
               function deselectQ2d() {
                   document.getElementById("Q2_radio_a").checked = 0;
                   document.getElementById("Q2_radio_b").checked = 0;
                   document.getElementById("Q2_radio_c").checked = 0;

                   document.getElementById("Q2_radio_a").value = 0;
                   document.getElementById("Q2_radio_b").value = 0;
                   document.getElementById("Q2_radio_c").value = 0;


                   document.getElementById("Q2_radio_d").value = "on";
               }
               function deselectQ3a() {
                   document.getElementById("Q3_radio_b").checked = 0;
                   document.getElementById("Q3_radio_c").checked = 0;
                   document.getElementById("Q3_radio_d").checked = 0;

                   document.getElementById("Q3_radio_b").value = 0;
                   document.getElementById("Q3_radio_c").value = 0;
                   document.getElementById("Q3_radio_d").value = 0;

                   document.getElementById("Q3_radio_a").value = "on";

               }
               function deselectQ3b() {
                   document.getElementById("Q3_radio_a").checked = 0;
                   document.getElementById("Q3_radio_c").checked = 0;
                   document.getElementById("Q3_radio_d").checked = 0;

                   document.getElementById("Q3_radio_a").value = 0;
                   document.getElementById("Q3_radio_c").value = 0;
                   document.getElementById("Q3_radio_d").value = 0;


                   document.getElementById("Q3_radio_b").value = "on";

               }
               function deselectQ3c() {
                   document.getElementById("Q3_radio_a").checked = 0;
                   document.getElementById("Q3_radio_b").checked = 0;
                   document.getElementById("Q3_radio_d").checked = 0;

                   document.getElementById("Q3_radio_a").value = 0;
                   document.getElementById("Q3_radio_b").value = 0;
                   document.getElementById("Q3_radio_d").value = 0;


                   document.getElementById("Q3_radio_c").value = "on";
               }
               function deselectQ3d() {
                   document.getElementById("Q3_radio_a").checked = 0;
                   document.getElementById("Q3_radio_b").checked = 0;
                   document.getElementById("Q3_radio_c").checked = 0;

                   document.getElementById("Q3_radio_a").value = 0;
                   document.getElementById("Q3_radio_b").value = 0;
                   document.getElementById("Q3_radio_c").value = 0;

                   document.getElementById("Q3_radio_d").value = "on";
               }
               function deselectQ4a() {
                   document.getElementById("Q4_radio_b").checked = 0;
                   document.getElementById("Q4_radio_c").checked = 0;
                   document.getElementById("Q4_radio_d").checked = 0;

                   document.getElementById("Q4_radio_b").value = 0;
                   document.getElementById("Q4_radio_c").value = 0;
                   document.getElementById("Q4_radio_d").value = 0;

                   document.getElementById("Q4_radio_a").value = "on";

               }
               function deselectQ4b() {
                   document.getElementById("Q4_radio_a").checked = 0;
                   document.getElementById("Q4_radio_c").checked = 0;
                   document.getElementById("Q4_radio_d").checked = 0;

                   document.getElementById("Q4_radio_a").value = 0;
                   document.getElementById("Q4_radio_c").value = 0;
                   document.getElementById("Q4_radio_d").value = 0;
                   document.getElementById("Q4_radio_b").value = "on";


               }
               function deselectQ4c() {
                   document.getElementById("Q4_radio_a").checked = 0;
                   document.getElementById("Q4_radio_b").checked = 0;
                   document.getElementById("Q4_radio_d").checked = 0;

                   document.getElementById("Q4_radio_a").value = 0;
                   document.getElementById("Q4_radio_b").value = 0;
                   document.getElementById("Q4_radio_d").value = 0;
                   document.getElementById("Q4_radio_b").value = "on";

               }
               function deselectQ4d() {
                   document.getElementById("Q4_radio_a").checked = 0;
                   document.getElementById("Q4_radio_b").checked = 0;
                   document.getElementById("Q4_radio_c").checked = 0;

                   document.getElementById("Q4_radio_a").value = 0;
                   document.getElementById("Q4_radio_b").value = 0;
                   document.getElementById("Q4_radio_c").value = 0;

                   document.getElementById("Q4_radio_b").value = "on";

               }
               function deselectQ5a() {
                   document.getElementById("Q5_radio_b").checked = 0;
                   document.getElementById("Q5_radio_c").checked = 0;
                   document.getElementById("Q5_radio_d").checked = 0;

                   document.getElementById("Q5_radio_b").value = 0;
                   document.getElementById("Q5_radio_c").value = 0;
                   document.getElementById("Q5_radio_d").value = 0;

                   document.getElementById("Q5_radio_a").value = "on";


               }
               function deselectQ5b() {
                   document.getElementById("Q5_radio_a").checked = 0;
                   document.getElementById("Q5_radio_c").checked = 0;
                   document.getElementById("Q5_radio_d").checked = 0;

                   document.getElementById("Q5_radio_a").value = 0;
                   document.getElementById("Q5_radio_c").value = 0;
                   document.getElementById("Q5_radio_d").value = 0;


                   document.getElementById("Q5_radio_b").value = "on";

               }
               function deselectQ5c() {
                   document.getElementById("Q5_radio_a").checked = 0;
                   document.getElementById("Q5_radio_b").checked = 0;
                   document.getElementById("Q5_radio_d").checked = 0;

                   document.getElementById("Q5_radio_a").value = 0;
                   document.getElementById("Q5_radio_b").value = 0;
                   document.getElementById("Q5_radio_d").value = 0;


                   document.getElementById("Q5_radio_b").value = "on";

               }
               function deselectQ5d() {
                   document.getElementById("Q5_radio_a").checked = 0;
                   document.getElementById("Q5_radio_b").checked = 0;
                   document.getElementById("Q5_radio_c").checked = 0;

                   document.getElementById("Q5_radio_a").value = 0;
                   document.getElementById("Q5_radio_b").value = 0;
                   document.getElementById("Q5_radio_c").value = 0;


                   document.getElementById("Q5_radio_c").value = "on";

               }
               function deselectQ6a() {
                   document.getElementById("Q6_radio_b").checked = 0;
                   document.getElementById("Q6_radio_c").checked = 0;
                   document.getElementById("Q6_radio_d").checked = 0;


                   document.getElementById("Q6_radio_b").value = 0;
                   document.getElementById("Q6_radio_c").value = 0;
                   document.getElementById("Q6_radio_d").value = 0;

                   document.getElementById("Q6_radio_a").value = "on";

               }
               function deselectQ6b() {
                   document.getElementById("Q6_radio_a").checked = 0;
                   document.getElementById("Q6_radio_c").checked = 0;
                   document.getElementById("Q6_radio_d").checked = 0;

                   document.getElementById("Q6_radio_a").value = 0;
                   document.getElementById("Q6_radio_c").value = 0;
                   document.getElementById("Q6_radio_d").value = 0;
                   document.getElementById("Q6_radio_b").value = "on";


               }
               function deselectQ6c() {
                   document.getElementById("Q6_radio_a").checked = 0;
                   document.getElementById("Q6_radio_b").checked = 0;
                   document.getElementById("Q6_radio_d").checked = 0;

                   document.getElementById("Q6_radio_a").value = 0;
                   document.getElementById("Q6_radio_b").value = 0;
                   document.getElementById("Q6_radio_d").value = 0;

                   document.getElementById("Q6_radio_c").value = "on";

               }
               function deselectQ6d() {
                   document.getElementById("Q6_radio_a").checked = 0;
                   document.getElementById("Q6_radio_b").checked = 0;
                   document.getElementById("Q6_radio_c").checked = 0;
                   document.getElementById("Q6_radio_d").value = "on";

                   document.getElementById("Q6_radio_a").value = 0;
                   document.getElementById("Q6_radio_b").value = 0;
                   document.getElementById("Q6_radio_c").value = 0;

               }
               function deselectQ7a() {
                   document.getElementById("Q7_radio_b").checked = 0;
                   document.getElementById("Q7_radio_c").checked = 0;
                   document.getElementById("Q7_radio_d").checked = 0;

                   document.getElementById("Q7_radio_b").value = 0;
                   document.getElementById("Q7_radio_c").value = 0;
                   document.getElementById("Q7_radio_d").value = 0;

                   document.getElementById("Q7_radio_a").value = "on";

               }
               function deselectQ7b() {
                   document.getElementById("Q7_radio_a").checked = 0;
                   document.getElementById("Q7_radio_c").checked = 0;
                   document.getElementById("Q7_radio_d").checked = 0;

                   document.getElementById("Q7_radio_a").value = 0;
                   document.getElementById("Q7_radio_c").value = 0;
                   document.getElementById("Q7_radio_d").value = 0;

                   document.getElementById("Q7_radio_b").value = "on";

               }
               function deselectQ7c() {
                   document.getElementById("Q7_radio_a").checked = 0;
                   document.getElementById("Q7_radio_b").checked = 0;
                   document.getElementById("Q7_radio_d").checked = 0;

                   document.getElementById("Q7_radio_a").value = 0;
                   document.getElementById("Q7_radio_b").value = 0;
                   document.getElementById("Q7_radio_d").value = 0;

                   document.getElementById("Q7_radio_c").value = "on";

               }
               function deselectQ7d() {
                   document.getElementById("Q7_radio_a").checked = 0;
                   document.getElementById("Q7_radio_b").checked = 0;
                   document.getElementById("Q7_radio_c").checked = 0;

                   document.getElementById("Q7_radio_a").value = 0;
                   document.getElementById("Q7_radio_b").value = 0;
                   document.getElementById("Q7_radio_c").value = 0;

                   document.getElementById("Q7_radio_d").value = "on";

               }
               function deselectQ8a() {
                   document.getElementById("Q8_radio_b").checked = 0;
                   document.getElementById("Q8_radio_c").checked = 0;
                   document.getElementById("Q8_radio_d").checked = 0;

                   document.getElementById("Q8_radio_b").value = 0;
                   document.getElementById("Q8_radio_c").value = 0;
                   document.getElementById("Q8_radio_d").value = 0;

                   document.getElementById("Q8_radio_a").value = "on";

               }
               function deselectQ8b() {
                   document.getElementById("Q8_radio_a").checked = 0;
                   document.getElementById("Q8_radio_c").checked = 0;
                   document.getElementById("Q8_radio_d").checked = 0;

                   document.getElementById("Q8_radio_a").value = 0;
                   document.getElementById("Q8_radio_c").value = 0;
                   document.getElementById("Q8_radio_d").value = 0;

                   document.getElementById("Q8_radio_b").value = "on";

               }
               function deselectQ8c() {
                   document.getElementById("Q8_radio_a").checked = 0;
                   document.getElementById("Q8_radio_b").checked = 0;
                   document.getElementById("Q8_radio_d").checked = 0;

                   document.getElementById("Q8_radio_a").value = 0;
                   document.getElementById("Q8_radio_b").value = 0;
                   document.getElementById("Q8_radio_d").value = 0;

                   document.getElementById("Q8_radio_c").value = "on";

               }
               function deselectQ8d() {
                   document.getElementById("Q8_radio_a").checked = 0;
                   document.getElementById("Q8_radio_b").checked = 0;
                   document.getElementById("Q8_radio_c").checked = 0;

                   document.getElementById("Q8_radio_a").value = 0;
                   document.getElementById("Q8_radio_b").value = 0;
                   document.getElementById("Q8_radio_c").value = 0;

                   document.getElementById("Q8_radio_d").value = "on";

               }
               function deselectQ9a() {
                   document.getElementById("Q9_radio_b").checked = 0;
                   document.getElementById("Q9_radio_c").checked = 0;
                   document.getElementById("Q9_radio_d").checked = 0;

                   document.getElementById("Q9_radio_a").value = "on";

                   document.getElementById("Q9_radio_b").value = 0;
                   document.getElementById("Q9_radio_c").value = 0;
                   document.getElementById("Q9_radio_d").value = 0;

               }

               function deselectQ9b() {
                   document.getElementById("Q9_radio_a").checked = 0;
                   document.getElementById("Q9_radio_c").checked = 0;
                   document.getElementById("Q9_radio_d").checked = 0;

                   document.getElementById("Q9_radio_a").value = 0;
                   document.getElementById("Q9_radio_c").value = 0;
                   document.getElementById("Q9_radio_d").value = 0;

                   document.getElementById("Q9_radio_b").value = "on";

               }
               function deselectQ9c() {
                   document.getElementById("Q9_radio_a").checked = 0;
                   document.getElementById("Q9_radio_b").checked = 0;
                   document.getElementById("Q9_radio_d").checked = 0;


                   document.getElementById("Q9_radio_a").value = 0;
                   document.getElementById("Q9_radio_b").value = 0;
                   document.getElementById("Q9_radio_d").value = 0;


                   document.getElementById("Q9_radio_c").value = "on";
               }
               function deselectQ9d() {
                   document.getElementById("Q9_radio_a").checked = 0;
                   document.getElementById("Q9_radio_b").checked = 0;
                   document.getElementById("Q9_radio_c").checked = 0;

                   document.getElementById("Q9_radio_a").value = 0;
                   document.getElementById("Q9_radio_b").value = 0;
                   document.getElementById("Q9_radio_c").value = 0;



                   document.getElementById("Q9_radio_d").value = "on";
               }
               function deselectQ10a() {
                   document.getElementById("Q10_radio_b").checked = 0;
                   document.getElementById("Q10_radio_c").checked = 0;
                   document.getElementById("Q10_radio_d").checked = 0;

                   document.getElementById("Q10_radio_b").value = 0;
                   document.getElementById("Q10_radio_c").value = 0;
                   document.getElementById("Q10_radio_d").value = 0;

                   document.getElementById("Q10_radio_a").value = "on";

               }
               function deselectQ10b() {
                   document.getElementById("Q10_radio_a").checked = 0;
                   document.getElementById("Q10_radio_c").checked = 0;
                   document.getElementById("Q10_radio_d").checked = 0;

                   document.getElementById("Q10_radio_a").value = 0;
                   document.getElementById("Q10_radio_c").value = 0;
                   document.getElementById("Q10_radio_d").value = 0;

                   document.getElementById("Q10_radio_b").value = "on";

               }
               function deselectQ10c() {
                   document.getElementById("Q10_radio_a").checked = 0;
                   document.getElementById("Q10_radio_b").checked = 0;
                   document.getElementById("Q10_radio_d").checked = 0;

                   document.getElementById("Q10_radio_a").value = 0;
                   document.getElementById("Q10_radio_b").value = 0;
                   document.getElementById("Q10_radio_d").value = 0;

                   document.getElementById("Q10_radio_c").value = "on";

               }
               function deselectQ10d() {
                   document.getElementById("Q10_radio_a").checked = 0;
                   document.getElementById("Q10_radio_b").checked = 0;
                   document.getElementById("Q10_radio_c").checked = 0;

                   document.getElementById("Q10_radio_a").value = 0;
                   document.getElementById("Q10_radio_b").value = 0;
                   document.getElementById("Q10_radio_c").value = 0;

                   document.getElementById("Q10_radio_d").value = "on";


               }
               </script>
    
   
    <h2 style="background-color:lightblue; lighting-color:blue;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Survey Page</h2>
    
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>

        

            <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px; margin-top:10px;cursor:pointer" >
              
        <tr><td> <h3 style="background-color:lightblue">Q1:</h3></td>
           
         <td><label id="Q1"></label>
                
         </td>
            <td>
                   <p id="Q1mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
        </tr>
            <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <label id="Q1a"></label>
             
         </td>    <td>   <input id="Q1_radio_a" type="radio" value="0" onclick="deselectQ1a()" /></td>
         </tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   
               <label id="Q1b"></label>
             
    </td><td><input id="Q1_radio_b" type="radio" value="0" onclick="deselectQ1b()" />
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label  id="Q1c"></label>
    </td>
                <td>  <input id="Q1_radio_c" type="radio" value="0" onclick="deselectQ1c()" /></td>
       </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label  id="Q1d"></label>
                
   </td><td> <input id="Q1_radio_d" type="radio" value="0" onclick="deselectQ1d()" />
         </td>
                </tr>

                       <!--     <tr><td> <h3 style=background-color:lightblue">Q1 Menu</h3></td><td>
     <input id="UpdateQ1" type="button" value="UpdateQ1" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

     <input id="DeleteQ1" type="button" value="DeleteQ1" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                       </td></tr> -->
   
        <tr><td> <h3 style="background-color:lightblue">Q2:</h3></td><td>
 <label  id="Q2"></label>
                                                                     </td>
            <td>
                   <p id="Q2mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
        </tr>
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td> <label  id="Q2a"></label>
           </td><td>     <input id="Q2_radio_a" type="radio" value="0" onclick="deselectQ2a()" />
    
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   
              <label  id="Q2b"></label>
   </td><td>             <input id="Q2_radio_b" type="radio" value="0" onclick="deselectQ2b()" />
                
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label  id="Q2c"></label>
            </td><td>    <input id="Q2_radio_c" type="radio" value="0" onclick="deselectQ2c()" />
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label  id="Q2d"></label>
            </td><td>    <input id="Q2_radio_d" type="radio" value="0" onclick="deselectQ2d()" />
                
         </td>
                </tr>

                               <!--   <tr><td> <h3 style=background-color:lightblue">Q2 Menu</h3></td><td>
     <input id="UpdateQ2" type="button" value="UpdateQ2" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ2" type="button" value="DeleteQ2" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                   </td></tr> -->
   
        <tr><td> <h3 style="background-color:lightblue">Q3:</h3></td><td>
 <label  id="Q3"></label>
                                                                     </td>
            <td>
                   <p id="Q3mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
        </tr>
     <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <label  id="Q3a"></label>
         </td><td>       <input id="Q3_radio_a" type="radio" value="0" onclick="deselectQ3a()" />
                
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <label  id="Q3b"></label>
         </td><td>     <input id="Q3_radio_b" type="radio" value="0" onclick="deselectQ3b()" />
                  
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label  id="Q3c"></label>
          </td><td>    <input id="Q3_radio_c" type="radio" value="0" onclick="deselectQ3c()" />
                    
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label  id="Q3d"></label>
   </td><td>             <input id="Q3_radio_d" type="radio" value="0" onclick="deselectQ3d()" />
                  
         </td>
                </tr>

                                        <!--       <tr><td> <h3 style=background-color:lightblue">Q3 Menu</h3></td><td>
     <input id="UpdateQ3" type="button" value="UpdateQ3" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ3" type="button" value="DeleteQ3" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                   </td></tr> -->
   
        <tr><td> <h3 style="background-color:lightblue">Q4:</h3></td><td>
  <label id="Q4" ></label></td>
            <td>
                   <p id="Q4mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
        </tr>
  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <label id="Q4a"></label>
        </td>
      <td>        <input id="Q4_radio_a" type="radio" onclick="deselectQ4a()" />
                  
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <label id="Q4b"></label>
          </td><td>      <input id="Q4_radio_b" type="radio" value="0" onclick="deselectQ4b()" />
                  
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label id="Q4c"></label>
                
        </td><td>        <input id="Q4_radio_c" type="radio" value="0" onclick="deselectQ4c()" />
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>  <label id="Q4d"></label>
                
</td><td>                <input id="Q4_radio_d" type="radio" value="0" onclick="deselectQ4d()" />
         </td>
                </tr>

                       <!--           <tr><td> <h3 style="background-color:lightblue">Q4 Menu:</h3></td><td>
     <input id="UpdateQ4" type="button" value="UpdateQ4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                           <input id="DeleteQ4" type="button" value="DeleteQ4" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>

                                                                                                    </td></tr> -->
   
        <tr><td> <h3 style="background-color:lightblue">Q5:</h3></td><td>
  
            <label id="Q5"></label>
                                                                     </td>
            <td>
                   <p id="Q5mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
        </tr>
     <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  
                         <label id="Q5a"></label>
  
                
              </td><td>  <input id="Q5_radio_a" type="radio" value="0" onclick="deselectQ5a()" />
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <label id="Q5b"></label>
              
         </td><td>       <input id="Q5_radio_b" type="radio" value="0" onclick="deselectQ5b()" />  
         </td>
                
           </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   
          <label id="Q5c"></label>
         </td><td>            <input id="Q5_radio_c" type="radio" value="0" onclick="deselectQ5c()" /> 
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>  
         <label id="Q5d"></label>
          </td><td>          <input id="Q5_radio_d" type="radio" value="0" onclick="deselectQ5d()" /> 
         </td>
                </tr>

                             <!--          <tr><td> <h3 style="background-color:lightblue">Q5 Menu:</h3></td><td>
     <input id="UpdateQ5" type="button" value="UpdateQ5" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ5" type="button" value="DeleteQ5" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr> -->
   
                     <tr><td> <h3 style="background-color:lightblue">Q6:</h3></td><td>
  
         <label id="Q6"></label></td>
                         <td>
                   <p id="Q6mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
                     </tr>
                   
                
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  
           <label id="Q6a"></label>

           </td><td>       <input id="Q6_radio_a" type="radio" value="0" onclick="deselectQ6a()" /> 
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>   <label id="Q6b"></label>
                
                </td><td>  <input id="Q6_radio_b" type="radio" value="0" onclick="deselectQ6b()" /> 
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>  <label id="Q6c"></label>
                
                </td><td>  <input id="Q6_radio_c" type="radio" value="0" onclick="deselectQ6c()" /> 
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label id="Q6d"></label>
                
            </td><td>      <input id="Q6_radio_d" type="radio" value="0" onclick="deselectQ6d()" /> 
         </td>
                </tr>

              <!--         <tr><td> <h3 style="background-color:lightblue">Q6 Menu:</h3></td><td>
     <input id="UpdateQ6" type="button" value="UpdateQ6" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ6" type="button" value="DeleteQ6" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr> -->
   
                                  <tr><td> <h3 style="background-color:lightblue">Q7:</h3></td><td>
  <label id="Q7"></label></td>
                                      <td>
                   <p id="Q7mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
                                  </tr>
   
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <label id="Q7a"></label>
                
                 </td><td> <input id="Q7_radio_a" type="radio" value="0" onclick="deselectQ7a()" /> 
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>  <label id="Q7b"></label>
                
               </td><td>   <input id="Q7_radio_b" type="radio" value="0" onclick="deselectQ7b()" /> 
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label id="Q7c"></label>
              
              </td><td>    <input id="Q7_radio_c" type="radio" value="0" onclick="deselectQ7c()" /> 
                
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label id="Q7d"></label>
           </td><td>       <input id="Q7_radio_d" type="radio" value="0" onclick="deselectQ7d()" /> 
         </td>
                </tr>

                                 <!--      <tr><td> <h3 style="background-color:lightblue">Q7 Menu:</h3></td><td>
     <input id="UpdateQ7" type="button" value="UpdateQ7" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ7" type="button" value="DeleteQ7" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>


                                                                                            </td></tr> -->
   
                    <tr><td> <h3 style="background-color:lightblue">Q8:</h3></td><td>
  <label id="Q8"></label></td>
                        <td>
                   <p id="Q8mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
                    </tr>
  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>  <label id="Q8a"></label>
                
               </td><td>   <input id="Q8_radio_a" type="radio" value="0" onclick="deselectQ8a()" /> 
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>  <label id="Q8b"></label>
                
              </td><td>    <input id="Q8_radio_b" type="radio" value="0" onclick="deselectQ8b()" />
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>    <label id="Q8c"></label>
                
              </td><td>    <input id="Q8_radio_c" type="radio" value="0" onclick="deselectQ8c()" />
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>    <label id="Q8d"></label>
                
            </td><td>      <input id="Q8_radio_d" type="radio" value="0" onclick="deselectQ8d()" />
         </td>
                </tr>

                <!--          <tr><td> <h3 style="background-color:lightblue">Q8 Menu:</h3></td><td>
     <input id="UpdateQ8" type="button" value="UpdateQ8" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ8" type="button" value="DeleteQ8" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>  -->
   

                                 <tr><td> <h3 style="background-color:lightblue">Q9:</h3></td><td>
     <label id="Q9"></label>
               </td>
                                     <td>
                   <p id="Q9mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
                                 </tr>
                     
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td> <label id="Q9a"></label>
                
               </td><td>   <input id="Q9_radio_a" type="radio" onclick="deselectQ9a()" />
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>  <label id="Q9b"></label>
              
              
             </td><td>     <input id="Q9_radio_b" type="radio" value="0" onclick="deselectQ9b()" />  
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>   <label id="Q9c"></label>
                   </td><td>        <input id="Q9_radio_c" type="radio" value="0" onclick="deselectQ9c()" />  
       
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>   <label id="Q9d"></label>
                   </td><td>        <input id="Q9_radio_d" type="radio" value="0" onclick="deselectQ9d()" />  
       
         </td>
                </tr>

                
             <!--        <tr><td> <h3 style="background-color:lightblue">Q9 Menu:</h3></td><td>
     <input id="UpdateQ9" type="button" value="UpdateQ9" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ9" type="button" value="DeleteQ9" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>
     -->

                                 <tr><td> <h3 style="background-color:lightblue">Q10:</h3></td><td>
  <label id="Q10"></label></td>
                                     <td>
                   <p id="Q10mes" style="color:red"></p> <!-- This Segment Displays The Validation Rule -->
         
            </td>
                                 </tr>
                         
                  <tr>
             <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice1:</h5></td>
           <td>   <label id="Q10a"></label>
                  </td><td>         <input id="Q10_radio_a" type="radio" value="0" onclick="deselectQ10a()" />  
       
         </td></tr>
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice2:</h5></td>
          <td>    <label id="Q10b"></label>
                              </td><td>      <input id="Q10_radio_b" type="radio" onclick="deselectQ10b()" />  
       
         </td>
                </tr>

           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice3:</h5></td>
          <td>    <label id="Q10c"></label>
                              </td><td>      <input id="Q10_radio_c" type="radio" value="0" onclick="deselectQ10c()" />  
       
         </td>
                </tr>
                
           <tr>  <td><h5 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; choice4:</h5></td>
          <td>    <label id="Q10d"></label>
                               </td><td>     <input id="Q10_radio_d" type="radio" value="0" onclick="deselectQ10d()" />  
       
         </td>
                </tr>

              <!--   <tr><td> <h3 style="background-color:lightblue">Q10 Menu:</h3></td><td>
     <input id="UpdateQ10" type="button" value="UpdateQ10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                   <input id="DeleteQ10" type="button" value="DeleteQ10" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                               </td></tr>   -->
   
                <tr> <td>
                    <h3 style="background-color:lightblue">&nbsp;&nbsp;&nbsp; Submit:</h3>
                     </td>
                    <td>
                      <input type="button" id="submit" value="submit" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer"/>
                                       
                    </td>
                </tr>
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
