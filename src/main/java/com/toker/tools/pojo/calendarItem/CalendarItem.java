package com.toker.tools.pojo.calendarItem;

/**
 * Auto-generated: 2019-05-30 0:51:27
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class CalendarItem {

    private long targetTime;
    private String title;
    private UserTab userTab;
    private OpeningTime openingTime;
    private String corpOrderUser;
    private String status;
    private String reason;
    public void setTargetTime(long targetTime) {
         this.targetTime = targetTime;
     }
     public long getTargetTime() {
         return targetTime;
     }

    public void setTitle(String title) {
         this.title = title;
     }
     public String getTitle() {
         return title;
     }

    public void setUserTab(UserTab userTab) {
         this.userTab = userTab;
     }
     public UserTab getUserTab() {
         return userTab;
     }

    public void setOpeningTime(OpeningTime openingTime) {
         this.openingTime = openingTime;
     }
     public OpeningTime getOpeningTime() {
         return openingTime;
     }

    public void setCorpOrderUser(String corpOrderUser) {
         this.corpOrderUser = corpOrderUser;
     }
     public String getCorpOrderUser() {
         return corpOrderUser;
     }

    public void setStatus(String status) {
         this.status = status;
     }
     public String getStatus() {
         return status;
     }

    public void setReason(String reason) {
         this.reason = reason;
     }
     public String getReason() {
         return reason;
     }

}