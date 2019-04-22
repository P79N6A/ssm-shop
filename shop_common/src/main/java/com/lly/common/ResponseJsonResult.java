package com.lly.common;

import java.util.ArrayList;
import java.util.List;

/**
 * Author:  lly
 * Date:    2019/4/22 8:58
 * Description:
 */
public class ResponseJsonResult {
    private int status =200;
    private String msg;
    private Object obj;
    private List<?> list =new ArrayList<Object>();

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public List<?> getList() {
        return list;
    }

    public void setList(List<?> list) {
        this.list = list;
    }
}
