// ------ GOOGLE MAP TRACKING -------
var latitude = latitude || null;
var longitude = longitude || null;

var initMap = function() {
    if ( !latitude && !longitude ) {
        return false;
    }
    
    var event = {lat: latitude, lng: longitude};

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: event
    });
    var marker = new google.maps.Marker({
        title: "Event",
        position: event,
        map: map
    });
};

$(document).ready(function () {
    $("#datepicker").kendoDateTimePicker({
        format: "yyyy/MM/dd HH:mm"
    });
});
  
