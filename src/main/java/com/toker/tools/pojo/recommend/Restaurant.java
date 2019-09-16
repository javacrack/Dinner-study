package com.toker.tools.pojo.recommend;

/**
 * Auto-generated: 2019-05-30 1:21:41
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Restaurant {

    private String name;
    private String uniqueId;
    private boolean available;
    private String tel;
    private int rating;
    private String deliveryRangeMeter;
    private int minimumOrder;
    private double latitude;
    private double longitude;
    private String warning;
    private String openingTime;
    private boolean onlinePayment;
    private boolean open;
    private int availableDishCount;
    private int dishLimit;
    private int restaurantStatus;
    private boolean remarkEnabled;
    public void setName(String name) {
         this.name = name;
     }
     public String getName() {
         return name;
     }

    public void setUniqueId(String uniqueId) {
         this.uniqueId = uniqueId;
     }
     public String getUniqueId() {
         return uniqueId;
     }

    public void setAvailable(boolean available) {
         this.available = available;
     }
     public boolean getAvailable() {
         return available;
     }

}