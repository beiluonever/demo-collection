package net.pyma.demo.lock.jvm.lock;

/**
 * Java并发编程艺术示例
 *
 * @author beiluo
 */
public class DeadLockDemo {
    private static String A = "A";
    private static String B = "B";

    public static void main(String[] args) {
        new DeadLockDemo().deadLock();
    }

    /**
     * jstack pid:
     *
     * Found one Java-level deadlock:
     * =============================
     * "Thread-1":
     *   waiting to lock monitor 0x0000000017952188 (object 0x00000000d61a4dc8, a java.lang.String),
     *   which is held by "Thread-0"
     * "Thread-0":
     *   waiting to lock monitor 0x0000000017953578 (object 0x00000000d61a4df8, a java.lang.String),
     *   which is held by "Thread-1"
     *
     * Java stack information for the threads listed above:
     * ===================================================
     * "Thread-1":
     *         at net.pyma.demo.lock.jvm.lock.DeadLockDemo$2.run(DeadLockDemo.java:32)
     *         - waiting to lock <0x00000000d61a4dc8> (a java.lang.String)
     *         - locked <0x00000000d61a4df8> (a java.lang.String)
     *         at java.lang.Thread.run(Thread.java:748)
     * "Thread-0":
     *         at net.pyma.demo.lock.jvm.lock.DeadLockDemo$1.run(DeadLockDemo.java:22)
     *         - waiting to lock <0x00000000d61a4df8> (a java.lang.String)
     *         - locked <0x00000000d61a4dc8> (a java.lang.String)
     *         at java.lang.Thread.run(Thread.java:748)
     *
     * Found 1 deadlock.
     */
    private void deadLock() {
        Thread t1 = new Thread(() -> {
            synchronized (A) {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                synchronized (B) {
                    System.out.println("1");
                }
            }
        });
        Thread t2 = new Thread(() -> {
            synchronized (B) {
                synchronized (A) {
                    System.out.println("2");
                }
            }
        });
        t1.start();
        t2.start();
    }
}
