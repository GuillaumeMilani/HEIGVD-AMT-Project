package ch.heigvd.model.entities;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
public class KebabShop {

    private final long id;
    private final String name, street, city, country, phone, creationDate;
    private final float kebabAveragePrice;

    public KebabShop(String name, String street, String city, String country, String phone, String creationDate, float kebabAveragePrice) {
        this(-1, name, street, city, country, phone, creationDate, kebabAveragePrice);
    }

    public KebabShop(long id, String name, String street, String city, String country, String phone, String creationDate, float kebabAveragePrice) {
        this.id = id;
        this.name = name;
        this.street = street;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.creationDate = creationDate;
        this.kebabAveragePrice = kebabAveragePrice;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getStreet() {
        return street;
    }

    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public String getPhone() {
        return phone;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public float getKebabAveragePrice() {
        return kebabAveragePrice;
    }
}
