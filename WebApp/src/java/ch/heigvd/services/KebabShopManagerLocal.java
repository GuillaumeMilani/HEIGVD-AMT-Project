package ch.heigvd.services;

import java.util.List;
import javax.ejb.Local;
import ch.heigvd.model.entities.KebabShop;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
@Local
public interface KebabShopManagerLocal {

    KebabShop getRandomKebabShop();

    List<KebabShop> findAllKebabShops();
    
    void addKebabShop(KebabShop kebabShop) throws Exception;
}
