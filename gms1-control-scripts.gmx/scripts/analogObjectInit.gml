/// analogObjectInit()

/**
 * Bootstraps analog watcher variables.
 *
 * IMPORTANT:
 * Use this script with the `obj_controlsAnalog` object only!
 */

// Player 1
// ----------------------------------------------------------------------
if (os_type == os_android) {
  p1_id   = 1;
} else {
  p1_id   = 0;
}

// Analog bindings
p1_lh   = global.P1_ANALOG_LH;
p1_lv   = global.P1_ANALOG_LV;
p1_rh   = global.P1_ANALOG_RH;
p1_rv   = global.P1_ANALOG_RV;

// Set initial values
p1_lh_prev  = gamepad_axis_value(p1_id, p1_lh);
p1_lv_prev  = gamepad_axis_value(p1_id, p1_lv);
p1_rh_prev  = gamepad_axis_value(p1_id, p1_rh);
p1_rv_prev  = gamepad_axis_value(p1_id, p1_rv);

// Analog status variables
p1_lh_down    = false;
p1_lh_pressed = false;
p1_lh_release = false;
p1_lv_down    = false;
p1_lv_pressed = false;
p1_lv_release = false;
p1_rh_down    = false;
p1_rh_pressed = false;
p1_rh_release = false;
p1_rv_down    = false;
p1_rv_pressed = false;
p1_rv_release = false;

// Player 2
// ----------------------------------------------------------------------
if (os_type == os_android) {
  p2_id   = 2;
} else {
  p2_id   = 1;
}

// Analog bindings
p2_lh   = global.P2_ANALOG_LH;
p2_lv   = global.P2_ANALOG_LV;
p2_rh   = global.P2_ANALOG_RH;
p2_rv   = global.P2_ANALOG_RV;

// Set initial values
p2_lh_prev  = gamepad_axis_value(p2_id, p2_lh);
p2_lv_prev  = gamepad_axis_value(p2_id, p2_lv);
p2_rh_prev  = gamepad_axis_value(p2_id, p2_rh);
p2_rv_prev  = gamepad_axis_value(p2_id, p2_rv);

// Analog status variables
p2_lh_down    = false;
p2_lh_pressed = false;
p2_lh_release = false;
p2_lv_down    = false;
p2_lv_pressed = false;
p2_lv_release = false;
p2_rh_down    = false;
p2_rh_pressed = false;
p2_rh_release = false;
p2_rv_down    = false;
p2_rv_pressed = false;
p2_rv_release = false;

// Player 3
// ----------------------------------------------------------------------
if (os_type == os_android) {
  p3_id   = 3;
} else {
  p3_id   = 2;
}

// Analog bindings
p3_lh   = global.P3_ANALOG_LH;
p3_lv   = global.P3_ANALOG_LV;
p3_rh   = global.P3_ANALOG_RH;
p3_rv   = global.P3_ANALOG_RV;

// Set initial values
p3_lh_prev  = gamepad_axis_value(p3_id, p3_lh);
p3_lv_prev  = gamepad_axis_value(p3_id, p3_lv);
p3_rh_prev  = gamepad_axis_value(p3_id, p3_rh);
p3_rv_prev  = gamepad_axis_value(p3_id, p3_rv);

// Analog status variables
p3_lh_down    = false;
p3_lh_pressed = false;
p3_lh_release = false;
p3_lv_down    = false;
p3_lv_pressed = false;
p3_lv_release = false;
p3_rh_down    = false;
p3_rh_pressed = false;
p3_rh_release = false;
p3_rv_down    = false;
p3_rv_pressed = false;
p3_rv_release = false;

// Player 4
// ----------------------------------------------------------------------
if (os_type == os_android) {
  p4_id   = 4;
} else {
  p4_id   = 3;
}

// Analog bindings
p4_lh   = global.P4_ANALOG_LH;
p4_lv   = global.P4_ANALOG_LV;
p4_rh   = global.P4_ANALOG_RH;
p4_rv   = global.P4_ANALOG_RV;

// Set initial values
p4_lh_prev  = gamepad_axis_value(p4_id, p4_lh);
p4_lv_prev  = gamepad_axis_value(p4_id, p4_lv);
p4_rh_prev  = gamepad_axis_value(p4_id, p4_rh);
p4_rv_prev  = gamepad_axis_value(p4_id, p4_rv);

// Analog status variables
p4_lh_down    = false;
p4_lh_pressed = false;
p4_lh_release = false;
p4_lv_down    = false;
p4_lv_pressed = false;
p4_lv_release = false;
p4_rh_down    = false;
p4_rh_pressed = false;
p4_rh_release = false;
p4_rv_down    = false;
p4_rv_pressed = false;
p4_rv_release = false;

// Sets deadzones for controllers
if (gamepad_is_connected(p1_id)) gamepad_set_axis_deadzone(p1_id, 0.2);
if (gamepad_is_connected(p2_id)) gamepad_set_axis_deadzone(p2_id, 0.2);
if (gamepad_is_connected(p3_id)) gamepad_set_axis_deadzone(p3_id, 0.2);
if (gamepad_is_connected(p4_id)) gamepad_set_axis_deadzone(p4_id, 0.2);
