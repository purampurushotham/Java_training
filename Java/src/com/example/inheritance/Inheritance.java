package com.example.inheritance;

class Bicycle {
    public int gear, speed;
    public Bicycle(){

    }
    public Bicycle(int gear, int speed){
        this.gear = gear;
        this.speed = speed;

    }
    public void speedUp(int speed){
        this.speed += speed;
    }
    public void speedDown(){
        this.speed -= speed;
    }
    public String toString(){
        return("No of gears are "+gear
                +"\n"
                + "speed of bicycle is "+speed);
    }
}
class MountainBike extends Bicycle{
    int seatHeight;
    public MountainBike(int gear,int speed,int seatHeight){
        super(gear,speed);
        this.seatHeight = seatHeight;

    }
    public String toString(){
        return (super.toString()+"\n"+"no of Seats"+seatHeight);
    }
}
public class Inheritance{
    public static void main(String args[]){
        MountainBike mb = new MountainBike(10,100,20);
        mb.speedUp(20);
        System.out.println(mb.toString());
    }
}