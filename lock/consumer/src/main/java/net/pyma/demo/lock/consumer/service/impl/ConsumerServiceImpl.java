package net.pyma.demo.lock.consumer.service.impl;

import net.pyma.demo.lock.consumer.service.IConsumerService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 * demo-collection
 * impl for consumer service
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-11-29 09:43
 **/
@Service
public class ConsumerServiceImpl implements IConsumerService {

    @Resource
    private RedisTemplate<String,Integer> redisTemplate;

    /**
     * @param key 资源Key
     * @return 成功失败
     */
    @Override
    public boolean consumerResource(String key) {
        redisTemplate.opsForValue().set(key,111);
        return false;
    }
}
