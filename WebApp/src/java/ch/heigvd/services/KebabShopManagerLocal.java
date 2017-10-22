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

    List<KebabShop> findAllKebabShops(int page);

    List<KebabShop> findAllKebabShops();

    KebabShop findKebabShop(long id);

    int countKebabShops();

    int getNbPages();

    void saveKebabShop(KebabShop kebabShop) throws Exception;

    void deleteKebabShop(long id);
    
    void generateData(int nbr);
}
