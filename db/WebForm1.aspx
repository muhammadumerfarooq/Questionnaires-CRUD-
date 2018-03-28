<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="db.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    <script src="../../canvasjs.min.js"></script>

</head>

   <!-- <form id="form1" runat="server">
    <div>

    <table class="auto-style1">

        <tr><td>Enter ID</td><td>
            <input type="text" id="txtID"/></td></tr>
        <tr><td>Enter FirstName</td><td>
            <input type="text" id="txtFName"/></td></tr>
        <tr><td>Enter Last Name</td><td>
            <input type="text" id="txtLName"/></td></tr>
        <tr><td >
            <span id="btnSubmit" style="border:1px solid black;background-color:lightblue;margin-left:50px;margin-top:10px;cursor:pointer">Submit</span></td>
            <td><span id="btnGetdata" style="border:1px solid black;background-color:lightgrey;margin-left:50px;margin-top:10px;cursor:pointer">Getdata</span></td>
        </tr>
    </table>
            
            <table id="tabledata" style="border:1px solid black">
            </table>
        </div>
       </form>
        -->
    
  

    <script type="text/javascript">
        /*$(document).ready(function () {
            var data = {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
                datasets: [{
                    label: "My First dataset",
                    fillColor: "#FC9775",
                    data: [65, 59, 80, 81, 56, 55, 40]
                }, {
                    label: "My Second dataset",
                    fillColor: "#5A69A6",
                    data: [28, 48, 40, 19, 86, 27, 90]
                }]
            };

            var ctx = $("#myBarChart").get(0).getContext("2d");
            var myBarChart = new Chart(ctx).Bar(data);
        });*/
        window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer",
			{
			    title: {
			        text: "Bar chart"
			    },

			    data: [
				{
				    type: "bar",

				    dataPoints: [
					{ x: 10, y: 90, label: "Apple" },
					{ x: 20, y: 70, label: "Mango" },
					{ x: 30, y: 50, label: "Orange" },
					{ x: 40, y: 60, label: "Banana" },
					{ x: 50, y: 20, label: "Pineapple" },
					{ x: 60, y: 30, label: "Pears" },
					{ x: 70, y: 35, label: "Grapes" },
					{ x: 80, y: 40, label: "Lychee" },
					{ x: 90, y: 30, label: "Jackfruit" }
				    ]
				}
			    ]
			});

            chart.render();
        }
            
            /*   var chrt = document.getElementById("mycanvas").getContext("2d");
        var myarr = [65, 59, 80, 81, 56, 55, 40];
        var data = {
            labels: ["January", "February", "March", "April", "May", "June", "July"], //x-axis
            datasets: [
                {
                    label: "My First dataset", //optional
                    fillColor: "rgba(220,220,220,0.8)",
                    strokeColor: "rgba(220,220,220,0.8)",
                    highlightFill: "rgba(220,220,220,0.75)",
                    highlightStroke: "rgba(220,220,220,1)",
                    data: [65, 59, 80, 81, 56, 55, 40] // y-axis
                },
                {
                    label: "My Second dataset", //optional
                    fillColor: "rgba(220,120,220,0.8)",
                    strokeColor: "rgba(220,120,220,0.8)",
                    highlightFill: "rgba(220,220,220,0.75)",
                    highlightStroke: "rgba(220,220,220,1)",
                    data: myarr
                }
            ]
        };

        var myFirstChart = new Chart(chrt).Bar(data);
        
        var canvas = document.getElementById('graphs');
        var ctx = canvas.getContext('2d');
        var score = [5, 44, 20, 45];
        var width = 80;
        var currX = 50;
        var base = 200;
        var age = [" 18>=Age<30", "30>=Age<40", "40>=Age<50", "50>=Age<=60"];
        ctx.fillStyle = 'blue';
       // ctx.strokeRect(18, 30, 40, 50);

        for (var i = 0; i < score.length; i++)
        {
            var h = score[i];
            ctx.fillRect(currX, canvas.height - h, width, h);
            ctx.fillText(age[i], currX, 200, h);
            currX += width + 10;
        }

        /*var chart = new RGraph.Bar('graphs', [5, 44, 20, 45]);
        chart.Set('chart.colors', ['red']);
        chart.Set('chart.title', "Age");
        chart.Set('chart.labels', ["18", "30", "40", "50"]);
        chart.Draw();
        */

        /*
        $(document).ready(function () {

            ///insert data

            $("[id*='btnSubmit']").click(function () {
                $.ajax({
                    type: "POST",
                    url: "WebForm1.aspx/saveData",
                    data: '{idStudent:"' + $("[id*='txtID']").val() +'",FirstName:"' + $("[id*='txtFName']").val() + '" , LastName:"' + $("[id*='txtLName']").val() + '" }',

                    contentType: "application/json; charset=utf-8",
                    success: function (response) {
                        if (response.d == true) {
                            alert('Saved Succesfully');
                        }
                        else {
                            alert('Not Saved');
                        }
                    },
                    error: function () {
                        alert('Connection error, please retry');
                    }
                });
            });

            /////////////retrieve data

        $("[id*='btnGetdata']").click(function () {
            $.ajax({
                type: "POST",
                url: "WebForm1.aspx/getData",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    $("[id*=tabledata]").empty();
                    for (var i = 0; i < data.d.length; i++) {
                        $("[id*=tabledata]").append("<tr><td>" + data.d[i].id + "</td><td><td>" + data.d[i].FirstName + "</td><td>" + data.d[i].LastName + "</td></tr>");
                    }                            
                },
                error: function () {
                    alert('Connection error, please retry');                        
                }
            });
        });
            
        });*/
    </script>




    <body>




        
	<div id="chartContainer" style="height: 400px; width: 100%;">
	</div>
</body>
</html>
