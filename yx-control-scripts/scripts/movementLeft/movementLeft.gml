/// @description Checks if input for "LEFT" is currently pressed
/// @function movementLeft
/// @param {real} slot Slot to check for input

var button, key, slot, slot_min, slot_max;

// On Android, the first slot is always 1 because of bluetooth
slot        = (os_type == os_android) ? 1 : 0;
slot_min    = (os_type == os_android) ? 1 : 0;
slot_max    = (os_type == os_android) ? 4 : 3;

// Check argument input
if (
    argument_count == 1 && is_real(argument[0])
    && argument[0] >= slot_min && argument[0] <= slot_max
) {
    slot = argument[0];
}

// Get player input by the slot
if (os_type == os_android) {
    switch (slot) {
        // PLAYER 1
        case 1:
            button  = global.P1_PAD_LT;
            key     = global.P1_KEY_LT;
            break;
        // PLAYER 2
        case 2:
            button  = global.P2_PAD_LT;
            key     = global.P2_KEY_LT;
            break;
        // PLAYER 3
        case 3:
            button  = global.P3_PAD_LT;
            key     = global.P3_KEY_LT;
            break;
        // PLAYER 4
        case 4:
            button  = global.P4_PAD_LT;
            key     = global.P4_KEY_LT;
            break;
    }
} else {
    switch (slot) {
        // PLAYER 1
        case 0:
            button  = global.P1_PAD_LT;
            key     = global.P1_KEY_LT;
            break;
        // PLAYER 2
        case 1:
            button  = global.P2_PAD_LT;
            key     = global.P2_KEY_LT;
            break;
        // PLAYER 3
        case 2:
            button  = global.P3_PAD_LT;
            key     = global.P3_KEY_LT;
            break;
        // PLAYER 4
        case 3:
            button  = global.P4_PAD_LT;
            key     = global.P4_KEY_LT;
            break;
    }
}

// Check input state and return
return controlsStateCheck(slot, 0, key, button);
