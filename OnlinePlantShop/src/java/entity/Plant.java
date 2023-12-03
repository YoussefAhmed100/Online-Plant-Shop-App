
package entity;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Plant {
  private int id;
  private String name ;
  private  int price;
  private  int age ;
  private String image; 

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
  private  String type;

   
    public Plant(int id,String name, int price, int age, String type,String image) {
        this.name = name;
        this.price = price;
        this.age = age;
        this.type = type;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
