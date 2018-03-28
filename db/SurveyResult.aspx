<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SurveyResult.aspx.cs" Inherits="db.SurveyResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    
    <script type="text/javascript">
           
      
            $(document).ready(function () {

                $("[id*='totalparticipants']").click(function () {
                    $.ajax({
                      
                        
                        window: location.href = "AgeGraph.aspx"

                    });

                });
            });
            $(document).ready(function () {

                $("[id*='graphage']").click(function () {
                    $.ajax({


                        window: location.href = "GraphsAge.aspx"

                    });

                });
            });
            $(document).ready(function () {

                $("[id*='graphincome']").click(function () {
                    $.ajax({


                        window: location.href = "GraphIncome.aspx"

                    });

                });
            });
            $(document).ready(function () {

                $("[id*='OptionsPercentage']").click(function () {
                    $.ajax({


                        window: location.href = "selectedoptions.aspx"

                    });

                });
            });
    </script>

            <table class="auto-style4" style="border:1px solid black;background-color:lightblue;margin-left:50px; margin-top:10px;cursor:pointer" >
        <tr>
            <td>
                <h4 style="background-color:lightblue">Show Total Survey Participants </h4></td><td>
           
            <input id="totalparticipants" type="button" value="totalparticipants" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> 
        
            </td>
        </tr>
                <tr>
                 
            <td>
                        <h4 style="background-color:lightblue">Show Graph Age </h4></td><td>
           
            <input id="graphage" type="button" value="graphage" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> 
        
            </td>

                </tr><tr>    
            <td>
                    <h4 style="background-color:lightblue">Show Graph Income </h4></td><td>
           
            <input id="graphincome" type="button" value="graphincome" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> 
        
            </td>
                       </tr>
                <tr>
            <td>
                
                            <h4 style="background-color:lightblue">Show OptionsPercentage Graph </h4></td><td>
           
            <input id="OptionsPercentage" type="button" value="OptionsPercentage" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer" /> 
        
            </td>
                </tr>
            </table>
</asp:Content>
