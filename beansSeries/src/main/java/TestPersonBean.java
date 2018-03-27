import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
public class TestPersonBean {
    public static void main(String args[]){
        beanFactory();
        applicationContextBean();
        AwareBeans();
    }
    public static void beanFactory(){
        Resource resource = new ClassPathResource("web.xml");
        BeanFactory beanFactory = new XmlBeanFactory(resource);
        PersonBean bean = (PersonBean) beanFactory.getBean("personBean");
        System.out.println("Using Bean factory");
        System.out.println("Name: "+bean.getName()+" "+"Age: "+ bean.getAge());

    }
    public static void applicationContextBean(){
        ApplicationContext appContext = new ClassPathXmlApplicationContext("web.xml");
        PersonBean bean = (PersonBean) appContext.getBean("personBean");
        System.out.println("Using Application context");
        System.out.println("Name: "+bean.getName()+" "+"Age: "+ bean.getAge());
        ((AbstractApplicationContext)appContext).registerShutdownHook();
    }
    public static void AwareBeans(){
        ApplicationContext appContext = new ClassPathXmlApplicationContext("web.xml");
        AwareBean bean = (AwareBean) appContext.getBean("awareBean");
        System.out.println("Using Aware Bean");
        ((AbstractApplicationContext)appContext).registerShutdownHook();
    }
}
