package org.pyma.demo.http.controller;

import com.alibaba.fastjson.JSON;
import org.pyma.demo.http.entity.ParamObj;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

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
        //curl -X POST 'localhost:8080/index-param?param1=1111&param2=22222'
        return String.format("indexNormal success get %s , %s",param1,param2);
    }

    @PostMapping("index-body")
    public String indexBody(@RequestBody String param1, @RequestBody Integer param2){
        //curl -X POST localhost:8080/index-body -d '{"param1":"111","param2":222}'  -H 'Content-Type: application/json'
        return String.format("indexBody success get %s , %s",param1,param2);
    }

    @GetMapping("index-body")
    public String indexBodyGet(@RequestBody ParamObj json){
        //curl -X GET localhost:8080/index-body -d '{"param1":"111","param2":222}'  -H 'Content-Type: application/json'
        return String.format("indexBodyGet success get %s ",json);
    }

    @PostMapping("index-body-one")
    public String indexBodyOne(@RequestBody String json){
        //curl -X POST localhost:8080/index-body-obj -d '{"param1":"111","param2":222}'
        //可以不加-H 'Content-Type: application/json'，获取一整串RequestBody
        return String.format("indexBodyOne success get %s",json);
    }

    @PostMapping("index-body-obj")
    public String indexBodyObj(@RequestBody ParamObj json){
        //curl -X POST localhost:8080/index-body-obj -d '{"param1":"111","param2":222}'  -H 'Content-Type: application/json'
        return String.format("indexBodyObj success get %s",json);
    }

    @PostMapping("index-header")
    public String indexHeader(@RequestHeader String param1, @RequestHeader Integer param2){
        //curl -X POST localhost:8080/index-header -H 'param1:1111' -H 'param2:222'  -H 'Content-Type: application/json'
        return String.format("indexHeader success get %s , %s",param1,param2);
    }

    @PostMapping("index-param")
    public String indexParam(@RequestParam String param1, @RequestParam Integer param2){
        //curl -X POST 'localhost:8080/index-param?param1=1111&param2=22222'
        return String.format("indexParam success get %s , %s",param1,param2);
    }

    @PostMapping("index-attribute")
    public String indexAttribute(@RequestAttribute String param1, @RequestAttribute Integer param2){
        return String.format("indexAttribute success get %s , %s",param1,param2);
    }

    @GetMapping("index-list-string")
    public String indexList(ArrayList<String> msg){
        return String.format("indexList success get %s", JSON.toJSONString(msg));
    }

    @GetMapping("index-list-string-param")
    public String indexListParam(@RequestParam List<String> msg){
        return String.format("indexListParam success get %s", JSON.toJSONString(msg));
    }

    @GetMapping("index-list-obj")
    public String indexListObj(ListParam params){
        return String.format("indexListParam success get %s", JSON.toJSONString(params));
    }


    private static class ListParam {

        List<ParamObj> params;

        public List<ParamObj> getParams() {
            return params;
        }

        public void setParams(List<ParamObj> params) {
            this.params = params;
        }
    }
}
