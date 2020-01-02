package net.pyma.demo.lock.jvm.threads;

/**
 * @author beiluo
 */
public class Daemon {
    public static void main(String[] args) {

        Thread thread = new Thread(new DaemonRunner(), "DaemonRunner");
        thread.setDaemon(true);
        thread.start();
    }

    /**
     * 并不一定执行finally方法体，在构建Daemon线程时，不能依靠finally块中的内容来确保执行关闭或清理资源
     * 的逻辑。
     */
    static class DaemonRunner implements Runnable {
        @Override
        public void run() {
            try {
                System.out.println("DaemonThread running");
                SleepUtils.second(10);
            } finally {
                System.out.println("DaemonThread finally run.");
            }
        }
    }
}