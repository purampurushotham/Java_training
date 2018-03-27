package dependecyInjection;


public class ConstructorBased {
    private String name;
    private int age;
    public ConstructorBased(){
        System.out.println("Default constructor");
    }
    public ConstructorBased(int age,String name){
        this.age = age;
        this.name = name;
        System.out.println("param Constructor "+age+","+name);
    }
    public ConstructorBased(String name,int age){
        this.name = name;
        System.out.println("param Constructors "+name+","+age);
    }
    public void setName(String name){
        this.name = name;
    }
    public void setAge(int age){
        this.age = age;
    }

    public String toString() {
        return "Name : "+name+" Age: "+age;
    }
}
