// ------ GOOGLE MAP TRACKING -------
var initMap = function() {
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
  
