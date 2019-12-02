package net.pyma.demo.lock.consumer.service;

/**
 * <p>
 * demo-collection
 * consumer service interface
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-11-29 09:33
 **/
public interface IConsumerService {

    /**
     *
     * @param key 资源Key
     * @return 成功失败
     */
    boolean consumerResource(String key);
}
