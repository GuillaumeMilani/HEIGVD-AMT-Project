/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import model.entities.KebabShop;

/**
 *
 * @author lognaume
 */
public class KebabShopManager {
    public KebabShop getRandomKebabShop() {
        return new KebabShop("Dylan", "Grand-Rue 1", "Yverdon", "Switzerland", "0", "today", 9.85f);
    }
}
