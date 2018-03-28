<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GraphIncome.aspx.cs" Inherits="db.GraphIncome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <script src="../../canvasjs.min.js"></script>
    <script type="text/javascript">
      
   
       $(document).ready(function () {

           $.ajax({
               type: "POST",
               url: "GraphIncome.aspx/getData",
               data: '{}',
               contentType: "application/json; charset=utf-8",
               success: function (data) {
                  
                   var yvalue1 = data.d[0].Incomeabove20;
                   var yvalue2 = data.d[1].Incomeabove30;
                   var yvalue3 = data.d[2].Incomeabove40;
                   var yvalue4 = data.d[3].Incomeabove50;
                   var yvalue5 = data.d[4].Incomeabove60;
                 
                   $("[id*=datatable]").empty();
                   $("[id*=datatable]").append(
"<thead>  <tr><th></th><th>" + "1k<=income<30k" + "</th> " + "<th>" + "30k<=income<40k" + "</th> " + "<th>" + "40k<=income<50k" + "</th> " + "<th>" + "50k<=income<60k" + "</th><th>"+"60k<=income<200k"+"</th> </tr></thead>" +
"<tbody><tr><th>" + "" + "</th><td>" + yvalue1 + "</td><td>" + yvalue2 + "</td><td>" + yvalue3 + "</td><td>" + yvalue4 + "</td><td>" + yvalue5 + "</td></tr>"
+ "</tbody></table>");
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
