package net.pyma.demo.flowable.flowableadminui;

import net.pyma.demo.flowable.flowableadminui.config.AppDispatcherServletConfiguration;
import net.pyma.demo.flowable.flowableadminui.config.ApplicationConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.Import;

/**
 * @author beiluonever
 */
@Import({
        ApplicationConfiguration.class,
        AppDispatcherServletConfiguration.class
})
@SpringBootApplication(
        exclude = {SecurityAutoConfiguration.class})
public class FlowableAdminUiApplication {

    public static void main(String[] args) {
        SpringApplication.run(FlowableAdminUiApplication.class, args);
    }

}
