package net.pyma.demo.lock.jvm.springConcurrent;

import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.concurrent.CustomizableThreadFactory;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.concurrent.*;

/**
 * <p>
 * demo-collection
 * 服务层
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2021-06-23 21:23
 **/
@Service
@Slf4j
public class IndexService {

    Integer i = 0;

    public String addData() {
        new Thread(() -> {
            concurrentF();
        }).run();
        return String.valueOf(i);
    }

    public String addNoExecutor(){
        new Thread(() -> {
            noExecutor();
        }).run();
        return "";
    }

    public synchronized void concurrentF() {
        Random random = new Random();
        ExecutorService executorService = new ThreadPoolExecutor(10, 10, 0,
                TimeUnit.SECONDS, new LinkedBlockingQueue<>(), new CustomizableThreadFactory("innerThread-"));

        for(int j=0;j<10;j++) {
            executorService.execute(() -> {
                try {
                    Thread.sleep(random.nextInt(300));
                    synchronized (i){
                        i++;
                    }

                    log.info("currentThread is {} i = {}", Thread.currentThread().getName(), i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            });
        }
    }

    public synchronized  void noExecutor(){
        Random random = new Random();
        try {
            for(int j=0;j<10;j++) {
                Thread.sleep(random.nextInt(300));
                i++;
                log.info("currentThread is {} i = {}", Thread.currentThread().getName(), i);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }



    }

}
