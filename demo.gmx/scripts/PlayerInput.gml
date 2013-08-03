
var gp_threshhold_x = 1.0,
    gp_threshhold_y = 2.0,
    js_threshhold_x = 0.2,
    js_threshhold_y = 0.4;

switch(argument0) {
    case('left'):
        if ( keyboard_check(vk_left) || keyboard_check(ord("A")) ) {
            return true;
        }
        if (useGamePad) {
            if ( gamepad_axis_value(gpToUse, gp_axislh) < (-1 * gp_threshhold_x) ) {
                return true;
            }
        }
        if (useJoystick) {
            if ( joystick_xpos(jsToUse) < (-1 * js_threshhold_x) ) {
                return true;
            }
        }
        break;
    case('right'):
        if ( keyboard_check(vk_right) || keyboard_check(ord("D")) ) {
            return true;
        }
        if (useGamePad) {
            if ( gamepad_axis_value(gpToUse, gp_axislh) > (gp_threshhold_x) ) {
                return true;
            }
        }
        if (useJoystick) {
            if ( joystick_xpos(jsToUse) > (js_threshhold_x) ) {
                return true;
            }
        }
        break;
    case('jump'):
        if ( keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) ) {
            return true;
        }
        if (useGamePad) {
            if (gamepad_button_check_pressed(gpToUse, gp_face1) ) {
                return true;
            }
        }
        if (useJoystick) {
            if (joystick_check_button(jsToUse, 1)) {
                return true;
            }
        }
        break;
    case('up'):
        if ( keyboard_check(vk_up) || keyboard_check(ord("W")) ) {
            return true;
        }
        if (useGamePad) {
            if ( gamepad_axis_value(gpToUse, gp_axislv) > (gp_threshhold_y) ) {
                return true;
            }
        }
        if ( joystick_ypos(jsToUse) < (-1 * js_threshhold_y) ) {
            return true;
        }
        break;
    case('down'):
        if ( keyboard_check(vk_down) || keyboard_check(ord("S")) ) {
            return true;
        }
        if (useGamePad) {
            if ( gamepad_axis_value(gpToUse, gp_axislv) < (-1 * gp_threshhold_y) ) {
                return true;
            }
        }
        if (useJoystick) {
            if ( joystick_ypos(jsToUse) > js_threshhold_y ) {
                return true;
            }
        }
        break;
}

return false;
