## API Documentation

###### How to send your availibility

Availability option has 5 different kind. <br/>

:point_right: A person could be available for appointments (opening)<br/>
:point_right: A person could be booked for a specific day or between days (appointment)<br/>
:point_right: A person could be not available due to sick, leave etc. for a specific day or between days (sick)<br/>
:point_right: A team could be not available due to a team event etc. for a specific day or between days (group)<br/>
:point_right: A group could be not available due to a national holiday etc. for a specific day or between days (whole)

After you have arrange your forms, you could finish your post requests to our system as following example:


API endpoint for POST request:  *DOMAIN/api/v1/events*<br/>


```javascript
{
"starts_at" : "2019-07-02T10:50:46.708Z",
"ends_at" : "2019-07-05T10:50:46.708Z",
"kind" : "appointment", // Kind can be opening, appointment, sick, group or whole
"weekly_recurring" : true
} 
```
Please set up your weekly_recurring boolean to true if unavailability will occur weekly.
