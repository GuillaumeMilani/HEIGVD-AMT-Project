package ch.heigvd.model.entities;

/**
 * This class represent one KebabShop with all the details.
 *
 * @author Guillaume Milani & Maxime Guillod
 */
public class KebabShop {

    private final long id;
    private final String name, street, city, country, phone, creationDate;
    private final float kebabAveragePrice;

    /**
     *
     * @param name
     * @param street
     * @param city
     * @param country
     * @param phone
     * @param creationDate
     * @param kebabAveragePrice
     */
    public KebabShop(String name, String street, String city, String country, String phone, String creationDate, float kebabAveragePrice) {
        this(-1, name, street, city, country, phone, creationDate, kebabAveragePrice);
    }

    /**
     *
     * @param id
     * @param name
     * @param street
     * @param city
     * @param country
     * @param phone
     * @param creationDate
     * @param kebabAveragePrice
     */
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

    /**
     *
     * @return
     */
    public long getId() {
        return id;
    }

    /**
     *
     * @return
     */
    public String getName() {
        return name;
    }

    /**
     *
     * @return
     */
    public String getStreet() {
        return street;
    }

    /**
     *
     * @return
     */
    public String getCity() {
        return city;
    }

    /**
     *
     * @return
     */
    public String getCountry() {
        return country;
    }

    /**
     *
     * @return
     */
    public String getPhone() {
        return phone;
    }

    /**
     *
     * @return
     */
    public String getCreationDate() {
        return creationDate;
    }

    /**
     *
     * @return
     */
    public float getKebabAveragePrice() {
        return kebabAveragePrice;
    }
}
