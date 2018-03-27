import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
public class PersonBean implements InitializingBean,DisposableBean{
    private String name;
    private int age;
    public PersonBean(){
        System.out.println("constructor bean is called");
    }
    @Override
    public void destroy() throws Exception{
        System.out.println("Person Bean is destroyed");
    }
    @Override
    public void afterPropertiesSet() throws Exception{
        System.out.println("Person Bean is Initialized");
    }
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
    public int getAge(){
        return this.age;
    }
    public void setAge(int age){
        this.age = age;
    }
    public void personBeanInit(){
        System.out.println("Custom INIT method");
    }
    public void personBeanDestroy(){
        System.out.println("Custom Destroy method");
    }
}
