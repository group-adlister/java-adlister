public class Cat {
    int id;
    String name;
    int age;
    String picture;

    public Cat() {

    }

    public Cat(String name, int age, String picture) {

        this.name = name;
        this.age = age;
        this.picture = picture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }


}

// MVC = Model, View, Controller
// M = mySQL
    // beans (cat)
    // DAO (cats/catherder)
    // DAO Factory
// C = servlet
// V = jsp
