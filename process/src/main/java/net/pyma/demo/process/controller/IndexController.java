package net.pyma.demo.process.controller;

import net.pyma.demo.process.util.CommandUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * demo-collection
 * test controller
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-12-02 16:14
 **/
@RestController
public class IndexController {

    /**
     * just for test,never use this way to set command
     *
     * @param command command
     * @return result
     */
    @GetMapping("run")
    public String runNormal(String command) {
        return CommandUtil.run(command);
    }

    @GetMapping("run-no-hup")
    public String runHoHup(String command, String normal, String error) {
        return CommandUtil.runWithNoHup(command, normal, error);
    }

    @GetMapping("run-no-hup-signal")
    public String runHoHupSignal(String command, String signal) {
        return CommandUtil.runWithNoHup(command, signal);
    }

    @GetMapping("get-pid")
    public String getPid(String keyword) {
        return String.join(",", CommandUtil.findPid(keyword));
    }

    @GetMapping("kill")
    public String kill(String pid) {
        return String.valueOf(CommandUtil.killProcess(pid));
    }
}
