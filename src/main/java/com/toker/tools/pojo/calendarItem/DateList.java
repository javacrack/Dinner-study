package com.toker.tools.pojo.calendarItem;
import java.util.Date;
import java.util.List;

/**
 * Auto-generated: 2019-05-30 0:51:27
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class DateList {

    private Date date;
    private List<CalendarItem> calendarItemList;
    public void setDate(Date date) {
         this.date = date;
     }
     public Date getDate() {
         return date;
     }

    public void setCalendarItemList(List<CalendarItem> calendarItemList) {
         this.calendarItemList = calendarItemList;
     }
     public List<CalendarItem> getCalendarItemList() {
         return calendarItemList;
     }

}