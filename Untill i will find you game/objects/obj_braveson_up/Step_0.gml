// Set movement speed
var move_speed = 4;

// --- Check input and switch object based on direction key pressed --- //

if (keyboard_check_pressed(vk_left) && object_index != obj_braveson_left) {
    instance_create_layer(x, y, layer, obj_braveson_left);
    instance_destroy();
}
else if (keyboard_check_pressed(vk_right) && object_index != obj_braveson_right) {
    instance_create_layer(x, y, layer, obj_braveson_right);
    instance_destroy();
}
else if (keyboard_check_pressed(vk_up) && object_index != obj_braveson_up) {
    instance_create_layer(x, y, layer, obj_braveson_up);
    instance_destroy();
}
else if (keyboard_check_pressed(vk_down) && object_index != obj_braveson_down) {
    instance_create_layer(x, y, layer, obj_braveson_down);
    instance_destroy();
}

// --- Move in the direction of input --- //
var hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed;
var vsp = (keyboard_check(vk_down) - keyboard_check(vk_up)) * move_speed;

x += hsp;
y += vsp;
