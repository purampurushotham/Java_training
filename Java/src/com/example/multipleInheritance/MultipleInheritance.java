package com.example.multipleInheritance;

interface parentInterface1
{
    // default method
    default void show()
    {
        System.out.println("Default PI1");
    }
}

interface parentInterface2
{
    // Default method
    default void show()
    {
        System.out.println("Default PI2");
    }
}

// Implementation class code
class MultipleInheritance implements parentInterface1, parentInterface2
{
    // Overriding default show method
    public void show()
    {

        parentInterface1.super.show();

        parentInterface1.super.show();
    }

    public static void main(String args[])
    {
        MultipleInheritance d = new MultipleInheritance();
        d.show();
    }
}