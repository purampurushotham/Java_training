package dependecyInjection;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDependencyInjection {
    public static void main(String args[]){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("web.xml");
        ConstructorBased constructorBased = (ConstructorBased)applicationContext.getBean("constructorBased");
        System.out.println(constructorBased.toString());
    }
}
