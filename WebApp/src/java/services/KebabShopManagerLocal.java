package services;

import java.util.List;
import javax.ejb.Local;
import model.entities.KebabShop;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
@Local
public interface KebabShopManagerLocal {

    KebabShop getRandomKebabShop();

    List<KebabShop> findAllKebabShops();
}
