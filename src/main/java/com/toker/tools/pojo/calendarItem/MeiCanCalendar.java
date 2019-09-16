package com.toker.tools.pojo.calendarItem;
import java.util.Date;
import java.util.List;

/**
 * Auto-generated: 2019-05-30 0:51:27
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class MeiCanCalendar {

    private Date startDate;
    private Date endDate;
    private List<DateList> dateList;
    public void setStartDate(Date startDate) {
         this.startDate = startDate;
     }
     public Date getStartDate() {
         return startDate;
     }

    public void setEndDate(Date endDate) {
         this.endDate = endDate;
     }
     public Date getEndDate() {
         return endDate;
     }

    public void setDateList(List<DateList> dateList) {
         this.dateList = dateList;
     }
     public List<DateList> getDateList() {
         return dateList;
     }

}