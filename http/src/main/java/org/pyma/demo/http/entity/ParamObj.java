package org.pyma.demo.http.entity;

/**
 * <p>
 * demo-collection
 * paramter object
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-11-20 15:17
 **/
public class ParamObj {
    private String param1;
    private Integer param2;

    @Override
    public String toString() {
        return "ParamObj{" +
                "param1='" + param1 + '\'' +
                ", param2=" + param2 +
                '}';
    }

    public String getParam1() {
        return param1;
    }

    public void setParam1(String param1) {
        this.param1 = param1;
    }

    public Integer getParam2() {
        return param2;
    }

    public void setParam2(Integer param2) {
        this.param2 = param2;
    }
}
