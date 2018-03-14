
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<body>
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            url: '/PieChartServlet',
            dataType: "JSON",
            success: function (response) {
                google.charts.load("current", {packages: ["corechart"]});
                google.charts.setOnLoadCallback(function () {
                    drawChart(response);
                });
            }
        })
    })

        function drawChart(jobData) {
            var complexObjectList = eval('(' + JSON.stringify(jobData) + ')');
            var data = new google.visualization.DataTable();
            data.addColumn("string", "status");
            data.addColumn("number", "id");
            /*data.addColumn("string", "jobno");
            data.addColumn("string", "department");
            data.addColumn("string", "division");
            data.addColumn("string", "region");
            data.addColumn("string", "status");
*/            for (var i = 0; i < complexObjectList.length; i++) {
                var id = complexObjectList[i].id;
                var name = complexObjectList[i].name;
                /*var jobno = complexObjectList[i].jobno;
                var department = complexObjectList[i].department;
                var division = complexObjectList[i].division;
                var region = complexObjectList[i].region;*/
                var status = complexObjectList[i].status;
                data.addRows([
                    [status,id]
                ]);
            }
            var options = {
                title: 'Job Records Group by Status',
                is3D:true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }
</script>
<div id="Details">
<div id="piechart_3d" style="width: 900px; height: 500px;"></div>
</div>
</body>
</html>