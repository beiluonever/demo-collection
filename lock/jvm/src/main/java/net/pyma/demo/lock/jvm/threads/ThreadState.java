package net.pyma.demo.lock.jvm.threads;

/**
 * @author beiluo
 */
public class ThreadState {


    /**
     * jstack 输出
     *
     * "BlockedThread-2" #15 prio=5 os_prio=0 tid=0x000000001b436800 nid=0x46bc waiting for monitor entry [0x000000001bfce000]
     *    java.lang.Thread.State: BLOCKED (on object monitor)
     *         at net.pyma.demo.lock.jvm.threads.ThreadState$Blocked.run(ThreadState.java:52)
     *         - waiting to lock <0x00000000d61ae430> (a java.lang.Class for net.pyma.demo.lock.jvm.threads.ThreadState$Blocked)
     *         at java.lang.Thread.run(Thread.java:748)
     *
     * "BlockedThread-1" #14 prio=5 os_prio=0 tid=0x000000001b44e000 nid=0x978 waiting on condition [0x000000001becf000]
     *    java.lang.Thread.State: TIMED_WAITING (sleeping)
     *         at java.lang.Thread.sleep(Native Method)
     *         at java.lang.Thread.sleep(Thread.java:340)
     *         at java.util.concurrent.TimeUnit.sleep(TimeUnit.java:386)
     *         at net.pyma.demo.lock.jvm.threads.SleepUtils.second(SleepUtils.java:12)
     *         at net.pyma.demo.lock.jvm.threads.ThreadState$Blocked.run(ThreadState.java:52)
     *         - locked <0x00000000d61ae430> (a java.lang.Class for net.pyma.demo.lock.jvm.threads.ThreadState$Blocked)
     *         at java.lang.Thread.run(Thread.java:748)
     *
     * "WaitingThread" #13 prio=5 os_prio=0 tid=0x000000001b442000 nid=0xd48 in Object.wait() [0x000000001bdcf000]
     *    java.lang.Thread.State: WAITING (on object monitor)
     *         at java.lang.Object.wait(Native Method)
     *         - waiting on <0x00000000d61ab0c0> (a java.lang.Class for net.pyma.demo.lock.jvm.threads.ThreadState$Waiting)
     *         at java.lang.Object.wait(Object.java:502)
     *         at net.pyma.demo.lock.jvm.threads.ThreadState$Waiting.run(ThreadState.java:34)
     *         - locked <0x00000000d61ab0c0> (a java.lang.Class for net.pyma.demo.lock.jvm.threads.ThreadState$Waiting)
     *         at java.lang.Thread.run(Thread.java:748)
     *
     * "TimeWaitingThread" #12 prio=5 os_prio=0 tid=0x000000001a68a800 nid=0x40e0 waiting on condition [0x000000001bccf000]
     *    java.lang.Thread.State: TIMED_WAITING (sleeping)
     *         at java.lang.Thread.sleep(Native Method)
     *         at java.lang.Thread.sleep(Thread.java:340)
     *         at java.util.concurrent.TimeUnit.sleep(TimeUnit.java:386)
     *         at net.pyma.demo.lock.jvm.threads.SleepUtils.second(SleepUtils.java:12)
     *         at net.pyma.demo.lock.jvm.threads.ThreadState$TimeWaiting.run(ThreadState.java:22)
     *         at java.lang.Thread.run(Thread.java:748)
     */
    public static void main(String[] args) {
        new Thread(new TimeWaiting(), "TimeWaitingThread").start();
        new Thread(new Waiting(), "WaitingThread").start();
        // 使用两个Blocked线程，一个获取锁成功，另一个被阻塞
        new Thread(new Blocked(), "BlockedThread-1").start();
        new Thread(new Blocked(), "BlockedThread-2").start();
    }

    /**
     * 该线程不断地进行睡眠
     */
    static class TimeWaiting implements Runnable {
        @Override
        public void run() {
            while (true) {
                SleepUtils.second(100);
            }
        }
    }    // 该线程在Waiting.class实例上等待

    static class Waiting implements Runnable {

        @Override
        public void run() {
            while (true) {
                synchronized (Waiting.class) {
                    try {
                        Waiting.class.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /**
     * 该线程在Blocked.class实例上加锁后，不会释放该锁
     */

    static class Blocked implements Runnable {
        @Override
        public void run() {
            synchronized (Blocked.class) {
                while (true) {
                    SleepUtils.second(100);
                }
            }
        }
    }
}
