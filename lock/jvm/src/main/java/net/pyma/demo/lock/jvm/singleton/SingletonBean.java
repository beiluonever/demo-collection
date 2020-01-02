package net.pyma.demo.lock.jvm.singleton;

/**
 * <p>
 * demo-collection
 * safe singleton bean
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2020-01-02 10:20
 **/
public class SingletonBean {

    private static boolean hasInit = false;

    /**
     * 解决双重验证时，instance未初始化结束时，其他线程的创建请求
     * 原理是禁止 初始化对象 和 设置instance指向内存空间的重排序
     */
    private volatile static SingletonBean instance;

    /**
     * 私有的构造方法
     */
    private SingletonBean() {
        // 防止反射创建多个对象
        if (SingletonBean.instance != null) {
            throw new RuntimeException("不允许创建多个实例");
        }
    }

    /**
     *
     * @return instance
     */
    private SingletonBean getInstance(){
        if(instance == null){
            synchronized (SingletonBean.class){
                if(instance == null){
                    instance = new SingletonBean();
                }
            }
        }
        return instance;
    }

    private  Object readResolve(){
        return  SingletonBean.instance;
    }
}
