package net.pyma.demo.lock.jvm.lock;

/**
 * @author beiluo
 */
public class FinalExample {
    /**
     * 普通变量
     */
    int i;
    /**
     * final变量
     */
    final int j;
    static FinalExample obj;

    public FinalExample() {
        // 构造函数
        // 写普通域
        i = 1;
        // 写final域
        j = 2;
    }

    public static void writer() {
        // 写线程A执行
        obj = new FinalExample();
    }

    public static void reader() {
        // 读线程B执行
        // 读对象引用
        FinalExample object = obj;
        // 读普通域
        int a = object.i;
        // 读final域
        int b = object.j;
    }
}
