package services;

import java.util.List;
import javax.ejb.Local;
import model.entities.KebabShop;

/**
 * 
 * @author Guillaume Milani & Maxime Guillod
 */
@Local
public interface InMemoryDataStoreLocal {
    int insertKebabShop(KebabShop kebabShop);
    KebabShop findKebabShop(int id) throws IndexOutOfBoundsException;
    List<KebabShop> findAllKebabShops();
}
