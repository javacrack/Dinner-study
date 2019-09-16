package com.toker.tools.pojo.calendarItem;
import java.util.List;

/**
 * Auto-generated: 2019-05-30 0:51:27
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Corp {

    private String uniqueId;
    private boolean useCloset;
    private String name;
    private String namespace;
    private boolean priceVisible;
    private boolean showPrice;
    private long priceLimit;
    private long priceLimitInCent;
    private boolean acceptCashPaymentToMeican;
    private boolean alwaysOpen;
    private List<AddressList> addressList;
    private boolean isAdmin;
    public void setUniqueId(String uniqueId) {
         this.uniqueId = uniqueId;
     }
     public String getUniqueId() {
         return uniqueId;
     }

    public void setUseCloset(boolean useCloset) {
         this.useCloset = useCloset;
     }
     public boolean getUseCloset() {
         return useCloset;
     }

    public void setName(String name) {
         this.name = name;
     }
     public String getName() {
         return name;
     }

    public void setNamespace(String namespace) {
         this.namespace = namespace;
     }
     public String getNamespace() {
         return namespace;
     }

    public void setPriceVisible(boolean priceVisible) {
         this.priceVisible = priceVisible;
     }
     public boolean getPriceVisible() {
         return priceVisible;
     }

    public void setShowPrice(boolean showPrice) {
         this.showPrice = showPrice;
     }
     public boolean getShowPrice() {
         return showPrice;
     }

    public void setPriceLimit(long priceLimit) {
         this.priceLimit = priceLimit;
     }
     public long getPriceLimit() {
         return priceLimit;
     }

    public void setPriceLimitInCent(long priceLimitInCent) {
         this.priceLimitInCent = priceLimitInCent;
     }
     public long getPriceLimitInCent() {
         return priceLimitInCent;
     }

    public void setAcceptCashPaymentToMeican(boolean acceptCashPaymentToMeican) {
         this.acceptCashPaymentToMeican = acceptCashPaymentToMeican;
     }
     public boolean getAcceptCashPaymentToMeican() {
         return acceptCashPaymentToMeican;
     }

    public void setAlwaysOpen(boolean alwaysOpen) {
         this.alwaysOpen = alwaysOpen;
     }
     public boolean getAlwaysOpen() {
         return alwaysOpen;
     }

    public void setAddressList(List<AddressList> addressList) {
         this.addressList = addressList;
     }
     public List<AddressList> getAddressList() {
         return addressList;
     }

    public void setIsAdmin(boolean isAdmin) {
         this.isAdmin = isAdmin;
     }
     public boolean getIsAdmin() {
         return isAdmin;
     }

}