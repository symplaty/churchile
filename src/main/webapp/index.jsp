<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String serverPort = "";
	if (request.getServerPort() != 80) {
		serverPort = ":" + request.getServerPort();
	}
	String serverPath = request.getScheme() + "://" + request.getServerName() + serverPort + path + "/";
	String basePath = serverPath;
	if (application.getAttribute("basePath") != null && application.getAttribute("basePath") != "") {
		basePath = application.getAttribute("basePath").toString();
	}
	pageContext.setAttribute("basePath", basePath);
	pageContext.setAttribute("serverPath", serverPath);
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Karmanta - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Karmanta, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
    <title>首页 | Churchile - 车起来</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="all" href="css/dmaku.css">
    <link href="css/style-responsive.css" rel="stylesheet" />
<!--     <script src="js/jquery-1.9.1.min.js"></script> -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
    
    <script>
        window.Constants = {
            serverPath: "${serverPath}",
            basePath: "${basePath}"
        };
    </script>
    <script type="text/javascript">
    if ("${loginUser.id}" == "") {
        window.location.href = Constants.serverPath + "login.jsp" + location.hash;
    }
    </script>

    

</head>

<body>
    <!-- container section start -->
    <section id="container" class="">
        <!--main content start-->
        
            <section class="wrapper">
                <!-- project team & activity start -->
					
                    <div class="col-lg-offset-1 col-lg-10">
                        <!--Project Activity start-->
                        <section class="panel">
                            <div class="panel-body progress-panel">
                                <div class="row">
                                    <div class="col-lg-8 task-progress pull-left">
                                        <a href="index.jsp" class="logo">Chur<span>chile</span> <span class="lite">车起来</span></a>
                                    </div>
                                    <div class="col-lg-4">
                                        <span class="profile-ava pull-right">
                                        <img alt="" class="simple" src="img/avatar1_small.jpg">
                                        John Doe
                                </span>
                                    </div>
                                </div>
                            </div>
                            <div id="in_city" style="display: none"></div>
                            <div class="form">
                                    <form class="form-validate form-horizontal" id="add-bus">
                                        <div class="form-group ">
                                            <label for="start" class="control-label col-lg-2">请选择出发地点  <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="start" name="start" minlength="4"  maxlength="8" type="text" required />

                                            </div>
                                        </div>
                                       
                                        <div class="form-group ">
                                            <label for="terminal" class="control-label col-lg-2">请选择到达地点  <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="terminal" name="terminal" minlength="4"  maxlength="8" type="text" required />
                                            </div>
                                        </div>
                                        
<!--                                         <div class="form-group "> -->
<!--                                             <label for="startTime" class="control-label col-lg-2">请选择出发时间  <span class="required">*</span></label> -->
<!--                                             <div class="col-lg-10"> -->
<!--                                                 <input class="form-control" id="startTime" name="startTime" minlength="4"  maxlength="8" type="text" required /> -->
<!--                                             </div> -->
<!--                                         </div> -->
                                        
                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button class="btn btn-primary" type="button" id="confirm">查询</button>
                                                <button class="btn btn-default" type="button" id="cancel">取消</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            
                            <table class="table table-hover personal-task" id="travel-result">
                                
                                
                                	 <tr id="table-head">
                                    	<th><i class="icon_ol"></i> #</th>
                                    	<th><i class="icon_id_alt"></i> 出发地</th>
                                    	<th><i class="icon_id_alt"></i> 目的地</th>
                                    	<th><i class="icon_id_alt"></i> 出发时间</th>
                                    	<th><i class="icon_id_alt"></i> 到达时间</th>
                                        <th><i class="icon_id_alt"></i> 车牌</th>
                                        <th><i class="icon_toolbox"></i> 类型</th>
                                        <th><i class="icon_percent"></i> 票价</th>
                                        <th><i class="icon_percent"></i> 车票数</th>
                                        <th><i class="icon_id_alt"></i> 剩余量</th>
                                        <th><i class="icon_cogs"></i> 操作</th>
                                    </tr>
                                   
                                    <tbody id="table-data">
                                    	
<!--                                     <tr> -->
<!--                                         <td>Today</td> -->
<!--                                         <td> -->
<!--                                             Project SRS. -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <span class="badge bg-important">Upload</span> -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <span class="profile-ava"> -->
<!--                                         <img alt="" class="simple" src="img/avatar1_small.jpg"> -->
<!--                                     </span> -->
<!--                                         </td> -->
<!--                                     </tr> -->
<!--                                     <tr> -->
<!--                                         <td>Yesterday</td> -->
<!--                                         <td> -->
<!--                                             Project Design Task -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <span class="badge bg-success">Task</span> -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <div id="work-progress2"></div> -->
<!--                                         </td> -->
<!--                                     </tr> -->
<!--                                     <tr> -->
<!--                                         <td>21.10.13</td> -->
<!--                                         <td> -->
<!--                                             Generate Invoice -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <span class="badge bg-success">Task</span> -->
<!--                                         </td> -->
<!--                                         <td> -->
<!--                                             <div id="work-progress3"></div> -->
<!--                                         </td> -->
<!--                                     </tr> -->
                                </tbody>
                            </table>
                        </section>
                        <!--Project Activity end-->
                    </div>
                <!-- project team & activity end -->
            </section>
        </section>
        <!--main content end-->
    
    <!-- container section start -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!-- jQuery full calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script type="text/javascript" src="js/dmaku.js"></script>
    
    
    
    <script type="text/javascript">
    	var travelList;
    	var index;
    </script>
    
   
    <script type="text/javascript">

	var cityA = $(".city_a_le1 a"); //城市
	var pla = $("#start");  //出发地
	var dest = $("#terminal");  //目的地
	// 默认值
	inCity.width = "345";  //城市选择框  宽
	inCity.height = "auto";  //城市选择框  高
	inCity.id = "#in_city";  //城市选择框  父级ID
	inCity.Children = '.city_a_le1';  //城市名box
	// 初始化 城市HTML模板
	$(inCity.id).prepend(inCity._template.join(''));
	inCity.Hot(cityA);
	
	//城市 导航
	var apay = $(".screen a");

	var placeThis; //当前选择标签
	apay.click(function(obj){  //城市导航
		inCity.payment($(this));
	})

	inCity.place(pla); //出发地
	inCity.destination(dest);  //目的地
	inCity.cityClick(cityA); //显示赋值城市
</script>
    
    <script>
    //knob
    $(function() {
        $(".knob").knob({
            'draw': function() {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true

        });
    });

    //custom select box

    $(function() {
        $('select.styled').customSelect();
    });
    </script>
  
   <script type="text/javascript">
    $(document).ready(function() {
        $("#confirm").click(function() {
        	
        	$("#table-data").html("");
        	
        	$.ajax({
    			url: Constants.serverPath + "travel/selecttravelbycity.do",
                data: {
                 	"start" : $("#start").val(),
                 	"terminal" : $("#terminal").val()

                },
                async:false,
                dataType: "json",
                type: "POST",
                success: function(resultData) {
                    if (!resultData.successful) {
                        var errorMsg = resultData.errorMsg;
                        alert(errorMsg.message);
                        return;
                    }
                    travelList = resultData.data;
                    console.log(travelList);
                },
                error: function() {
                   alert("select travel by city error");
                }
            });
        	if(travelList != null){
        	var busType;
            var volume;
    		for(var i=1; i<=travelList.length; i ++){
	    		if(travelList[i-1].type == 1){
	            	busType = "小巴";
	            	volume = 40;
	            }else if(travelList[i-1].type == 2){
	            	busType = "中巴";
	            	volume = 50;
	            }else if(travelList[i-1].type == 3){
	            	busType = "大巴";
	            	volume = 60;
	            }
	            
    			$("#table-data").html("<tr><td>" + travelList[i - 1].id + travelList[i-1].ticketId + "</td><td>" + travelList[i - 1].start + "</td><td>" + travelList[i - 1].terminal + "</td><td>" + travelList[i - 1].startTime + "</td><td>" + travelList[i - 1].endTime + "</td><td>"  + travelList[i-1].plate + "</td><td>" + busType + "</td><td>" + travelList[i - 1].price + "</td><td>" + volume +"</td><td>" + travelList[i - 1].volumeLeft + "</td><td><a id=\"" + (i-1) + "\" class=\"btn btn-primary edit\"><i class=\"icon_plus_alt2\"></i></a></td></tr>"

    			);
    			
    			}
    		}

        });
        $("#cancel").click(function() {
            location.reload();
        });

    });
    </script>

    
</body>

</html>