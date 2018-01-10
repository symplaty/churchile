package com.yep.churchile.utils;

import com.yep.churchile.utils.ResultData.ErrorMsg;

public final class ConstantMsg {
    public final static ErrorMsg ERROR_USER_PHONE_NOT_NULL = new ErrorMsg("error.user.phone.not.null", "手机号码不能为空");
    public final static ErrorMsg ERROR_USER_PASSWORD_NOT_NULL = new ErrorMsg("error.user.password.not.null", "密码不能为空");
    public final static ErrorMsg EXCEPTION = new ErrorMsg("exception", "系统忙，请稍后再试");
    public final static ErrorMsg ERROR_PARAM = new ErrorMsg("error.param", "参数错误");
    public final static ErrorMsg ERROR_RESULT_NULL = new ErrorMsg("error.result.null", "结果为空");
    public final static ErrorMsg ERROR_USER_NOT_FOUND = new ErrorMsg("error.user.not.found", "未找到用户");


}
