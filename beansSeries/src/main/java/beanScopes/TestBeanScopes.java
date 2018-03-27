package beanScopes;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestBeanScopes {
    public static void main(String args[]) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("web.xml");
        SingleTon ST1 = (SingleTon) applicationContext.getBean("singleTon");
        SingleTon ST2 = (SingleTon) applicationContext.getBean("singleTon");
        PrototypeScope prototypeScope1 = (PrototypeScope)applicationContext.getBean("prototypeScope");
        PrototypeScope prototypeScope2 = (PrototypeScope)applicationContext.getBean("prototypeScope");
        System.out.println("Singleton Bean scope: "+isBeansEqual(ST1,ST2));
        System.out.println("Prototype Bean scope: " +isBeansEqual(prototypeScope1,prototypeScope2));


    }
    public static Boolean isBeansEqual(Object bean1,Object bean2){
        System.out.println(bean1);
        System.out.println(bean2);
        return bean1 == bean2;
    }

}
