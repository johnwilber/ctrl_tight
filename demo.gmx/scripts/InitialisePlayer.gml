CreateCollisionMap();

sprite_index = walk_right;
image_speed = 0.5;

// basic movement setup
xspeed = 2;
grav=2;
jump=false;
dir=0;


// New vars
// This logic just isn't working for some reason
useGamePad = false;
gpToUse = -1;
if (gamepad_is_supported()) {
    var gp_num = gamepad_get_device_count();
    if (gp_num > 0) {
        for (var i = 0; i < gp_num; i++;) {
show_debug_message('gamepad_get_description: ' + string(gamepad_get_description(i)))
            if (gamepad_is_connected(i)) {
                gpToUse = i;
                useGamePad = true;
                break;
            }
        }
    }
}
show_debug_message('useGamePad: ' + string(useGamePad));

useJoystick = false;
jsToUse = 0;
if (joystick_exists(1) || joystick_exists(2)) {
    useJoystick = true;
    if (joystick_exists(1)) {
        jsToUse = 1;
    } else {
        jsToUse = 2;
    }
}
show_debug_message('useJoystick: ' + string(useJoystick));



speed_max = 10;
speed_start = 0.25;
speed_acceleration = 0.25;
