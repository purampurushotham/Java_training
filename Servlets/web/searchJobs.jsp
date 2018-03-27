
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="jquery.stickit.js"></script>
</head>
<body>
<style>
    #sidebar {
        float: left;
        margin-left: 2.564102564102564%;
        width: 31.623931623931625%;
        background: none;
        border: 2px solid #333333;
        margin-bottom: 50px !important
    }
    .sections {
        float: left;
        width: 1000px;
    }
</style>
<script>
    /*var test = "testing";
    (function ($) {
    })(jQuery);
    (function(open) {
        XMLHttpRequest.prototype.open = function(method, url, async, user, pass) {
            this.addEventListener("readystatechange", function() {
                if (this.readyState == 4) {
                    console.log("if conition")
                    console.log(test);
                }
            }, false);
            open.call(this, method, url, async, user, pass);
            console.log("else conition")
        };
    })(XMLHttpRequest.prototype.open);
*/
    $(document).ready(function() {
      jQuery('#sidebar').stickit();
        /*$.ajax({
            url: '/PieChartServlet',
            dataType: "JSON",
            success: function (response) {
                google.charts.load("current", {packages: ["corechart"]});
                google.charts.setOnLoadCallback(function () {
                    drawChart(response);
                    drawBarChart(response);
                });
            }
        })*/
    })
function testing(){
        console.log("testingdsfdsfd")
    $("#test").html("This is after ajax call");
}
function drawBarChart(jobData){
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

    };

    var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}
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
<div id="chart_div" style="width: 900px; height: 500px;"></div>
    <div id="sidebar">
        <p class="fontsize">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus.
        </p>
    </div>
    <div class="sections">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis diam sed risus aliquet, in vestibulum neque lacinia. Ut nec consequat dolor. Aenean venenatis justo nec sagittis lacinia. Quisque metus tortor, porta quis nulla sit amet, dictum facilisis orci. Quisque ipsum dui, feugiat a lorem venenatis, interdum porttitor lacus. Sed ac augue vitae tellus fringilla tincidunt. In id ultrices erat. Vestibulum ut suscipit massa, ac pulvinar erat. Duis in accumsan eros. Ut elementum accumsan libero consectetur scelerisque. Mauris ut turpis id nibh iaculis egestas eget ornare risus. Donec justo tellus, rutrum et euismod eleifend, eleifend vel augue. Quisque vulputate mi ut ante aliquet, ut molestie orci rutrum. Donec molestie, mauris vitae accumsan venenatis, felis turpis tempor erat, sit amet euismod est dui vel libero. Nunc sed turpis nec ipsum tristique porta.
            Ut viverra sollicitudin velit. Fusce ac ante ac nunc posuere tempus. Aenean aliquet lacus arcu, id tristique lacus tempor at. In vel enim dolor. Sed sed sem quam. Pellentesque scelerisque malesuada quam in tempus. Pellentesque commodo vestibulum varius. Suspendisse in sollicitudin magna. Aenean condimentum, quam non rhoncus hendrerit, augue augue cursus nulla, ut commodo dolor justo in orci. Vivamus auctor vitae dolor at porttitor. Praesent euismod pellentesque sollicitudin. Phasellus blandit adipiscing dictum. Etiam hendrerit scelerisque quam nec suscipit. Mauris elit orci, facilisis ut fermentum ac, consequat vel nisl.
        </p>
    </div>
</div>
</body>
</html>