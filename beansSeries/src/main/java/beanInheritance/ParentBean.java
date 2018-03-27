package beanInheritance;

public class ParentBean {
    private String message,title;
    public void setMessage(String message){
        this.message = message;
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getMessage(){
        return this.message;
    }

    public String getTitle() {
        return this.title;
    }
}
