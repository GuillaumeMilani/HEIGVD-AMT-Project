package ch.heigvd.services;

import ch.heigvd.model.entities.KebabShop;
import java.sql.Date;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
public class GeneratorKebabShop {

    private String[] names = {
        "AliBaba",
        "KebabLand",
        "The Kabab",
        "One kebab",
        "Gany",
        "Olivier",
        "MasterKebab"};

    private String[] cities = {
        "Payerne",
        "Lausanne",
        "Yverdon",
        "Lucerne",
        "Moudon",
        "Lucens",
        "Gland",
        "Vevey",
        "Corcelles"};

    private String[] street1 = {
        "Route",
        "Place",
        "Impasse",
        "Chemin",
        "Rue",
        "Avenue"};

    private String[] street2 = {
        "du pont",
        "du général",
        "du refuge",
        "de la fenette",
        "du sansuie",
        "du favez",
        "du gymnase",
        "de la coline",
        "de Vuary",
        "du centre"};

    public GeneratorKebabShop() {
    }

    private int random(int min, int max) {
        return min + (int) (Math.random() * ((max - min) + 1));
    }

    private String getName() {
        return names[random(0, names.length - 1)];
    }

    private String getCity() {
        return cities[random(0, cities.length - 1)];
    }

    private String getStreet() {
        String street = street1[random(0, street1.length - 1)];
        street += " ";
        street += street2[random(0, street2.length - 1)];
        street += " ";
        street += random(1, 23);
        return street;
    }

    private String getCountry() {
        return "Suisse";
    }

    private String getPhone() {
        String retour = "0";

        for (int i = 0; i < 9; i++) {
            retour += random(0, 9);
        }

        return retour;
    }

    private float getPrice() {
        return random(8, 14);
    }

    public KebabShop getKebabShop() {
        return new KebabShop(getName(), getStreet(), getCity(), getCountry(), getPhone(), null, getPrice());
    }

}
