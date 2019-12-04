show_debug_message("Event = " + async_load[? "event_type"]);        // Debug cocde so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    show_debug_message("GP #: " + string(gamepad_get_device_count()));
for (var i = 0; i < gamepad_get_device_count(); i++) {
	var msg;
	if (gamepad_is_connected(i)) {
		msg = " is connected";
	} else {
		msg = " is not connected";
	}
	show_debug_message("Gamepad #" + string(i+1) + msg);
}
    break;
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    show_debug_message("GONE");
    break;
}