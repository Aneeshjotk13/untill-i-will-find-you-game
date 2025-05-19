// Reset movement
var hsp = 0;
var vsp = 0;

// Movement and direction
if (keyboard_check(vk_right)) {
    var hsp = move_speed;
    sprite_index = spr_braveson_right;
}
else if (keyboard_check(vk_left)) {
    var hsp = -move_speed;
    sprite_index = spr_braveson_left;
}
else if (keyboard_check(vk_up)) {
    var vsp = -move_speed;
    sprite_index = spr_braveson_up;
}
else if (keyboard_check(vk_down)) {
    var vsp = move_speed;
    sprite_index = spr_braveson_down;
}

// Apply movement
x += hsp;
y += vsp;

