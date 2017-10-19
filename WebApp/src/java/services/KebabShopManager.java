/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import model.entities.KebabShop;

@Stateless
public class KebabShopManager implements KebabShopManagerLocal {

    @EJB
    InMemoryDataStoreLocal inMemoryDataStore;
    
    @Override
    public KebabShop getRandomKebabShop() {
        int key = inMemoryDataStore.insertKebabShop(new KebabShop("Dylan", "Grand-Rue 1", "Yverdon", "Switzerland", "0", "today", 9.85f));
        return inMemoryDataStore.findKebabShop(key);
    }

    @Override
    public List<KebabShop> getAllKebabShops() {
        return inMemoryDataStore.findAllKebabShops();
    }
}
