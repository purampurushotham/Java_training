package beanInheritance;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class TestInheritance {
    public static void main(String args[]){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("web.xml");
        /* when parent bean is abstracted then no need to initilaize it */
        /*ParentBean parentBean = (ParentBean)applicationContext.getBean("parentBean");
        System.out.println("Parent Bean");
        System.out.println("Message: "+parentBean.getMessage());
        System.out.println("Title: "+parentBean.getTitle());*/
        ParentBean childBean = (ParentBean)applicationContext.getBean("childBean");
        System.out.println("Child Bean");
        System.out.println("Message: "+childBean.getMessage());
        System.out.println("Title: "+childBean.getTitle());
        ((AbstractApplicationContext)applicationContext).registerShutdownHook();
    }
}
