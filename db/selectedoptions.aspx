<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="selectedoptions.aspx.cs" Inherits="db.selectedoptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
       <script src="../../canvasjs.min.js"></script>
    <script type="text/javascript">
      
   
       $(document).ready(function () {

           $.ajax({
               type: "POST",
               url: "selectedoptions.aspx/getData",
               data: '{}',
               contentType: "application/json; charset=utf-8",
               success: function (data) {
                

                   $("[id*=datatable]").empty();
                   $("[id*=datatable]").append(
"<thead>  <tr><th></th><th>" + "a" + "</th> " + "<th>" + "b" + "</th> " + "<th>" + "c" + "</th> " + "<th>" + "d" + "</th> </tr></thead>" +
"<tbody><tr><th>" + "Q1" + "</th><td>" + data.d[0].Q1a + "</td><td>" + data.d[0].Q1b + "</td><td>" + data.d[0].Q1c + "</td><td>" + data.d[0].Q1d + "</td></tr>"
+"<tr><th>" + "Q2" + "</th><td>" + data.d[0].Q2a + "</td><td>" + data.d[0].Q2b + "</td><td>" + data.d[0].Q2c + "</td><td>" + data.d[0].Q2d + "</td></tr>"
+ "<tr><th>" + "Q3" + "</th><td>" + data.d[0].Q3a + "</td><td>" + data.d[0].Q3b + "</td><td>" + data.d[0].Q3c + "</td><td>" + data.d[0].Q3d + "</td></tr>"
+ "<tr><th>" + "Q4" + "</th><td>" + data.d[0].Q4a + "</td><td>" + data.d[0].Q4b + "</td><td>" + data.d[0].Q4c + "</td><td>" + data.d[0].Q4d + "</td></tr>"
+ "<tr><th>" + "Q5" + "</th><td>" + data.d[0].Q5a + "</td><td>" + data.d[0].Q5b + "</td><td>" + data.d[0].Q5c + "</td><td>" + data.d[0].Q5d + "</td></tr>"
+ "<tr><th>" + "Q6" + "</th><td>" + data.d[0].Q6a + "</td><td>" + data.d[0].Q6b + "</td><td>" + data.d[0].Q6c + "</td><td>" + data.d[0].Q6d + "</td></tr>"
+ "<tr><th>" + "Q7" + "</th><td>" + data.d[0].Q7a + "</td><td>" + data.d[0].Q7b + "</td><td>" + data.d[0].Q7c + "</td><td>" + data.d[0].Q7d + "</td></tr>"
+ "<tr><th>" + "Q8" + "</th><td>" + data.d[0].Q8a + "</td><td>" + data.d[0].Q8b + "</td><td>" + data.d[0].Q8c + "</td><td>" + data.d[0].Q8d + "</td></tr>"
+ "<tr><th>" + "Q9" + "</th><td>" + data.d[0].Q9a + "</td><td>" + data.d[0].Q9b + "</td><td>" + data.d[0].Q9c + "</td><td>" + data.d[0].Q9d + "</td></tr>"
+ "<tr><th>" + "Q10" + "</th><td>" + data.d[0].Q10a + "</td><td>" + data.d[0].Q10b + "</td><td>" + data.d[0].Q10c + "</td><td>" + data.d[0].Q10d + "</td></tr>"

+"</tbody></table>");
                   Highcharts.chart('container', {
                       data: {
                           table: 'datatable'
                       },
                       chart: {
                           type: 'column'
                       },
                       title: {
                           text: 'Chart Showing Selected Options Percentage'
                       },
                       yAxis: {
                           allowDecimals: false,
                           title: {
                               text: 'Units'
                           }
                       },
                       tooltip: {
                           formatter: function () {
                               return '<b>' + this.series.name + '</b><br/>' +
                                   this.point.y + ' ' + this.point.name.toLowerCase();
                           }
                       }
                   });

               },

               error: function () {
                   alert('Connection error, please retry');
               }
           });
       })

           </script>
    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
    <table id="datatable">
    </table>
</asp:Content>
