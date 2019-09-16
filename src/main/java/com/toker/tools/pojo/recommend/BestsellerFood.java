package com.toker.tools.pojo.recommend;
import java.util.List;

/**
 * Auto-generated: 2019-05-30 1:21:41
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class BestsellerFood {

    private List<MyRegularDish> myRegularDishList;
    private List<OthersRegularDish> othersRegularDishList;
    private String othersRegularDishListSource;
    private boolean showPrice;
    public void setMyRegularDishList(List<MyRegularDish> myRegularDishList) {
         this.myRegularDishList = myRegularDishList;
     }
     public List<MyRegularDish> getMyRegularDishList() {
         return myRegularDishList;
     }

    public List<OthersRegularDish> getOthersRegularDishList() {
		return othersRegularDishList;
	}
	public void setOthersRegularDishList(List<OthersRegularDish> othersRegularDishList) {
		this.othersRegularDishList = othersRegularDishList;
	}
	public void setOthersRegularDishListSource(String othersRegularDishListSource) {
         this.othersRegularDishListSource = othersRegularDishListSource;
     }
     public String getOthersRegularDishListSource() {
         return othersRegularDishListSource;
     }

    public void setShowPrice(boolean showPrice) {
         this.showPrice = showPrice;
     }
     public boolean getShowPrice() {
         return showPrice;
     }

}