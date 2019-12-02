package net.pyma.demo.process.util;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

/**
 * <p>
 * demo-collection
 * command util
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-12-02 16:13
 **/
@Slf4j
public class CommandUtil {

    private static final String NO_HUP_BACKSTAGE = "nohup %s > %s 2>%s &";

    private static final String FIND_PID = "ps -ef | grep %s | grep -v grep | awk '{print $2}'";

    private static final String KILL_SIGNAL_TO_PID = "kill -9 %s";

    /**
     * run command with one command
     *
     * @param command command
     * @return command out
     */
    public static String run(String command) {
        ProcessBuilder processBuilder = new ProcessBuilder();
        processBuilder.command("bash", "-c", command);
        String out = "";
        try {
            log.info(String.join(" ", processBuilder.command()));
            Process process = processBuilder.start();
            out = IOUtils.toString(process.getInputStream());
        } catch (IOException e) {
            log.error("run command error {}", e.getMessage());
            e.printStackTrace();
        }
        return out;
    }

    /**
     * run command with one command use no hup
     *
     * @param command       command
     * @param normalOutFile normal out file path
     * @param errorOutFile  error out file path
     * @return command out
     */
    public static String runWithNoHup(String command, String normalOutFile, String errorOutFile) {
        return run(String.format(NO_HUP_BACKSTAGE, command, normalOutFile, errorOutFile));
    }


    /**
     * run command with one command use no hup ,out file is signal file
     *
     * @param command       command
     * @param signalOutFile outfile
     * @return command out
     */
    public static String runWithNoHup(String command, String signalOutFile) {
        return run(String.format(NO_HUP_BACKSTAGE, command, signalOutFile, signalOutFile));
    }

    /**
     * use ps -ef grep keyword get process id
     *
     * @param grepKeyword grep process word
     * @return process ids
     */
    public static Collection<String> findPid(String grepKeyword) {
        String pIds = run(String.format(FIND_PID, grepKeyword));
        log.debug("process id origin is {}", pIds);
        String[] ids = pIds.split("\n");
        return Arrays.asList(ids);
    }

    /**
     * send kill signal to process by process id
     *
     * @param pid process id
     * @return successful or failed
     */
    public static boolean killProcess(String pid){
        String out = run(String.format(KILL_SIGNAL_TO_PID,pid));
        return StringUtils.isEmpty(out);
    }

}
