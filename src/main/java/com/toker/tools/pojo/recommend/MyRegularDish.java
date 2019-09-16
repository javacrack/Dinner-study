package com.toker.tools.pojo.recommend;

/**
 * Auto-generated: 2019-05-30 1:21:41
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class MyRegularDish {

    private int dishSectionId;
    private long id;
    private boolean isSection;
    private String name;
    private int originalPriceInCent;
    private int priceInCent;
    private String priceString;
    private Restaurant restaurant;
    public void setDishSectionId(int dishSectionId) {
         this.dishSectionId = dishSectionId;
     }
     public int getDishSectionId() {
         return dishSectionId;
     }

    public void setId(long id) {
         this.id = id;
     }
     public long getId() {
         return id;
     }

    public void setIsSection(boolean isSection) {
         this.isSection = isSection;
     }
     public boolean getIsSection() {
         return isSection;
     }

    public void setName(String name) {
         this.name = name;
     }
     public String getName() {
         return name;
     }

    public void setOriginalPriceInCent(int originalPriceInCent) {
         this.originalPriceInCent = originalPriceInCent;
     }
     public int getOriginalPriceInCent() {
         return originalPriceInCent;
     }

    public void setPriceInCent(int priceInCent) {
         this.priceInCent = priceInCent;
     }
     public int getPriceInCent() {
         return priceInCent;
     }

    public void setPriceString(String priceString) {
         this.priceString = priceString;
     }
     public String getPriceString() {
         return priceString;
     }

    public void setRestaurant(Restaurant restaurant) {
         this.restaurant = restaurant;
     }
     public Restaurant getRestaurant() {
         return restaurant;
     }

}