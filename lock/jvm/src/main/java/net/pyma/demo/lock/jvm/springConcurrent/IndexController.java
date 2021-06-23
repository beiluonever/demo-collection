package net.pyma.demo.lock.jvm.springConcurrent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * <p>
 * demo-collection
 * 请求入口
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2021-06-23 21:21
 **/
@RestController
public class IndexController {

    @Resource
    IndexService indexService;

    @GetMapping("add")
    public String add(){
        return System.currentTimeMillis()+":"+indexService.addData();
    }


    @GetMapping("addNoExecutor")
    public String addNoExecutor(){
        return System.currentTimeMillis()+":"+indexService.addNoExecutor();
    }

}
