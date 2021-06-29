package net.pyma.demo.lock.jvm.singleton;

import org.springframework.scheduling.concurrent.CustomizableThreadFactory;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * @author beiluonever@qq.com
 * @date 6/23/2021 1:40 PM
 */
public class SynchronizedAddMain {

    public void service(){
        ExecutorService executor = new ThreadPoolExecutor(10, 10,
                0L, TimeUnit.MILLISECONDS,
                new LinkedBlockingQueue<>() , new CustomizableThreadFactory("内部增加-pool-"));
        CountDownLatch latch = new CountDownLatch(10);

        for(int i=0; i<10 ;i++) {
            executor.execute(()->SingletonEnum.A.add(latch));
        }
        try {
            latch.await();
        } catch (InterruptedException E) {
            // handle
        }
    }

    public static void main(String[] args) {
        ExecutorService executor = new ThreadPoolExecutor(100, 100,
                0L, TimeUnit.MILLISECONDS,
                new LinkedBlockingQueue<>(),new CustomizableThreadFactory("外部调用-pool-") );
        for(int i = 0;i<10;i++) {
            executor.execute(() -> new SynchronizedAddMain().service());
        }

    }
}
