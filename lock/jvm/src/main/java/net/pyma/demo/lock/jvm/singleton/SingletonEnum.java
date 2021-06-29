package net.pyma.demo.lock.jvm.singleton;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadLocalRandom;

/**
 * @author beiluonever@qq.com
 * @date 6/23/2021 1:38 PM
 */
public enum SingletonEnum {
    A;
    int i = 0;
    public synchronized void add(CountDownLatch countDownLatch){
        try {
            //随机延迟模拟数据库
            Thread.sleep(ThreadLocalRandom.current().nextInt(100, 200 + 1));
            i++;
            System.out.println("当前线程为："+Thread.currentThread().getName()+";i="+i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            countDownLatch.countDown();
        }
    }

}
