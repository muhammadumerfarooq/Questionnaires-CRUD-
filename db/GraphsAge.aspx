<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GraphsAge.aspx.cs" Inherits="db.GraphsAge" %>
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
               url: "GraphsAge.aspx/getData",
               data: '{}',
               contentType: "application/json; charset=utf-8",
               success: function (data) {
                  
                   $("[id*=datatable]").empty();
                   $("[id*=datatable]").append(
"<thead>  <tr><th></th><th>" + "18>=Age<30" + "</th> " + "<th>" + "30>=Age<40" + "</th> " + "<th>" + "40>=Age<50" + "</th> " + "<th>" + "50>=Age<60" + "</th> </tr></thead>" +
"<tbody><tr><th>" + "Age" + "</th><td>" + data.d[0].Ageabove18 + "</td><td>" + data.d[1].Ageabove30 + "</td><td>" + data.d[2].Ageabove40 + "</td><td>" + data.d[3].Ageabove50 + "</td></tr>"

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
