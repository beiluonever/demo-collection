package net.pyma.demo.flowable.flowableadminui;

import net.pyma.demo.flowable.flowableadminui.config.ApplicationConfiguration;
import net.pyma.demo.flowable.flowableadminui.servlet.AppDispatcherServletConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author beiluonever
 */
@Import({
        ApplicationConfiguration.class,
        AppDispatcherServletConfiguration.class
})
@EnableTransactionManagement
@SpringBootApplication
public class FlowableAdminUiApplication {

    public static void main(String[] args) {
        SpringApplication.run(FlowableAdminUiApplication.class, args);
    }

}
