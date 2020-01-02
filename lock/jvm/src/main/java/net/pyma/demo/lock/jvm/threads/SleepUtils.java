package net.pyma.demo.lock.jvm.threads;

import java.util.concurrent.TimeUnit;

/**
 * @author beiluo
 */
public class SleepUtils {

    public static final void second(long seconds) {
        try {
            TimeUnit.SECONDS.sleep(seconds);
        } catch (InterruptedException e) {

        }
    }
}