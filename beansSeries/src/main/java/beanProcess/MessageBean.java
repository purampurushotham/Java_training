package beanProcess;
public class MessageBean {
    private String message;
    public MessageBean(){
        System.out.println("constructor is called");
    }
    public void init() throws Exception{
        System.out.println("Message Bean is Intialized");
    }
    public void destroy() throws  Exception{
        System.out.println("Message Bean is Destroyed");
    }
    public String getMessage(){
        return this.message;
    }
    public void setMessage(String message){
        this.message = message;
    }
}
