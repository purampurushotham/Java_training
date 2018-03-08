package com.example.aggregation;

class Address{
    public String city,state,country;
    public Address(String city,String state,String country){
        this.city = city;
        this.state = state;
        this.country = country;
    }
}
class Employee{
    public String name;
    public int id;
    public Address address;
    public Employee(int id,String name,Address address){
        this.id = id;
        this.name = name;
        this.address = address;
    }
    public void displayDetails(){
        System.out.println("Employee Details:"+id+"\n"+name+"\n"+"Address: \n"+address.city+" "+address.state+" "+address.country);
    }
}
public class Aggregation{
    public static void main(String[] args){
        Address Aone = new Address("tirupati","Andhrapradesh","IND");
        Address Atwo = new Address("Hyderabad","Telanagana","IND");
        Employee emp1 = new Employee(1,"purushotham",Aone);
        Employee emp2 = new Employee(2,"sai raj",Atwo);
        emp1.displayDetails();
        emp2.displayDetails();
    }
}