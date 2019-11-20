package org.pyma.demo.http.controller;

import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * demo-collection
 * index controller
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-11-20 10:12
 **/
@RestController
public class IndexController {

    @PostMapping("index-normal")
    public String indexNormal(String param1,Integer param2){
        return String.format("indexNormal success get %s , %s",param1,param2);
    }

    @PostMapping("index-body")
    public String indexBody(@RequestBody String param1, @RequestBody Integer param2){
        return String.format("indexBody success get %s , %s",param1,param2);
    }

    @PostMapping("index-body-one")
    public String indexBodyOne(@RequestBody String json){
        return String.format("indexBodyOne success get %s",json);
    }

    @PostMapping("index-body-obj")
    public String indexBodyObj(@RequestBody ParamObj json){
        return String.format("indexBodyObj success get %s",json);
    }

    @PostMapping("index-header")
    public String indexHeader(@RequestHeader String param1, @RequestHeader Integer param2){
        return String.format("indexHeader success get %s , %s",param1,param2);
    }

    @PostMapping("index-param")
    public String indexParam(@RequestParam String param1, @RequestParam Integer param2){
        return String.format("indexParam success get %s , %s",param1,param2);
    }

    @PostMapping("index-attribute")
    public String indexAttribute(@RequestAttribute String param1, @RequestAttribute Integer param2){
        return String.format("indexAttribute success get %s , %s",param1,param2);
    }

    private static class ParamObj {
        String param1;
        Integer param2;

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
}
