package beanProcess;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMessageBean {
    public static void main (String args[]){
        ApplicationContext appContext = new ClassPathXmlApplicationContext("web.xml");
        MessageBean messageBean = (MessageBean)appContext.getBean("messageBean");
        ((AbstractApplicationContext)appContext).registerShutdownHook();
    }
}
