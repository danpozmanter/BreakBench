public class Main {
    interface Animal { String sound(); }
    static class Dog implements Animal { public String sound() { return "woof"; } }
    static class Cat implements Animal { public String sound() { return "meow"; } }

    public static void main(String[] args) {
        Dog[] dogs = { new Dog() };
        Animal[] animals = dogs;
        animals[0] = new Cat();
        System.out.println(dogs[0].sound());
    }
}
