/**
 * 
 * @authors anthonyoung (you@example.org)
 * @date    2018-01-08 19:41:17
 * @version $Id$
 */
$(function() {
    var pageFuns = {
        "bindEvents": function() {
            $("#login").click(pageFuns.login);
            $(window).keydown(function(e) {
                // 回车登录
                if (e.keyCode == 13) {
                    pageFuns.login();
                }
            });
        },
        "login": function() {
            /* 表单提交 */
            var result = {};
            $.ajax({
                url: Constants.serverPath + "user/login.do",
                data: {
                    "phone": $.trim($("#phone").val()),
                    "password": $("#password").val()
                },
                async:false,
                dataType: "json",
                type: "POST",
                success: function(resultData) {
                	console.log(resultData);
                	// alert(resultData);
                    if (!resultData.successful) {
                        var errorMsg = resultData.errorMsg;
                        alert(errorMsg.message);
                        window.location.href = Constants.serverPath + "login.jsp";
                        return;
                    }
                    result = resultData.data;
                    console.log(result);
                    console.log(result.userType);
                    if(result.userType == 0){
                    	window.location.href = Constants.serverPath + "admin-index.jsp";
                    }
                    else{
                    	window.location.href = Constants.serverPath + "index.jsp";
                    }
                    
                },
                error: function() {
                   window.location.href = Constants.serverPath + "login.jsp";
                }
            });
        }
    };
    pageFuns.bindEvents();
});