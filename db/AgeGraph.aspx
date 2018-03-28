<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgeGraph.aspx.cs" Inherits="db.AgeGraph" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            margin-left: 166px;
            width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    
 

            
        
            <script type="text/javascript">
           
      
            $(document).ready(function () {
                    $.ajax({
                    
                            type: "POST",
                            url: "AgeGraph.aspx/getData",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            success: function (data) {
                                $("[id*=tabledata]").empty();
                                $("[id*=tabledata]").append(
         "  <tr><th id=Gender> Gender </th><th id=Age> Age </th> "+
    "<th id=Occupation> Occupation </th><th id=Income> Income </th>"+
    "<th id=Q1> Q1 </th><th id=Q2> Q2 </th>"+
    "<th id=Q3> Q3 </th><th id=Q4> Q4 </th><th id=Q5> Q5 </th>"+
    "<th id=Q6> Q6 </th><th id=Q7> Q7 </th><th id=Q8> Q8 </th>"+
     "<th id=Q9> Q9 </th><th id=Q10> Q10 </th></tr>");

                                    for (var i = 0; i < data.d.length; i++) {
                                        $("[id*=tabledata]").append("<tr><td headers=Gender>" + data.d[i].gender + "</td><td headers=Age>" + data.d[i].Age + "</td><td headers=Occupation>" + data.d[i].occ + "</td><td headers=Income>" + data.d[i].inc + "</td><td headers=Q1>" + data.d[i].q1 + "</td><td headers=Q2>" + data.d[i].q2 +"</td><td headers=Q3>" + data.d[i].q3 + "</td><td headers=Q4>" + data.d[i].q4 + "</td><td headers=Q5>" + data.d[i].q5 + "</td><td headers=Q6>"
                                      + data.d[i].q6 + "</td><td headers=Q7>"  + data.d[i].q7 + "</td><td headers=Q8>"  + data.d[i].q8 + "</td><td headers=Q9>"  + data.d[i].q9 +"</td><td headers=Q10>" + data.d[i].q10 + "</td></tr>");
                                          
                         
                                    }
                                },
                            
                            error: function () {
                                alert('Connection error, please retry');
                            }
                        
                });
                    });

          
            
    </script>
          
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <table id="tabledata" style="border:1px solid black;background-color:lightgreen;font-size:large" class="auto-style3" >
      
  <!--<tr>
    <td headers="Gender">John Doe</td>
    <td headers="Age">someone@example.com</td>
    <td headers="Occupation">+45342323</td>
    <td headers="Income">Rosevn 56,4300 Sandnes,Norway</td>
  </tr>
          -->
                      </table>
    
</asp:Content>
