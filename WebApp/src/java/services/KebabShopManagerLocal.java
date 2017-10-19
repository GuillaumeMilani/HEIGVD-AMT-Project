/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.util.List;
import javax.ejb.Local;
import model.entities.KebabShop;

/**
 *
 * @author lognaume
 */
@Local
public interface KebabShopManagerLocal {

    KebabShop getRandomKebabShop();

    List<KebabShop> getAllKebabShops();
}
