package com.toker.tools.pojo;

import com.toker.tools.pojo.recommend.Restaurant;

import java.util.List;

public class Restuarants {
    private boolean noMore;
    private String targetTime;
    private List<Restaurant> restaurantList;

    public boolean isNoMore() {
        return noMore;
    }

    public void setNoMore(boolean noMore) {
        this.noMore = noMore;
    }

    public String getTargetTime() {
        return targetTime;
    }

    public void setTargetTime(String targetTime) {
        this.targetTime = targetTime;
    }

    public List<Restaurant> getRestaurantList() {
        return restaurantList;
    }

    public void setRestaurantList(List<Restaurant> restaurantList) {
        this.restaurantList = restaurantList;
    }
}
