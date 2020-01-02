package net.pyma.demo.lock.jvm.singleton;

/**
 * @author beiluo
 */
public class InstanceFactory {

    private static class SingletonBean{

    }

    private static class InstanceHolder {
        public static SingletonBean instance = new SingletonBean();
    }

    public static SingletonBean getInstance() {
        return InstanceHolder.instance;
        // 这里将导致InstanceHolder类被初始化
        // 并且会产生Class初始化锁，在这里的1.分配内存，2初始化对象，设置instance指向内存，即使发生重排序，对其他线程不可见
    }
}
