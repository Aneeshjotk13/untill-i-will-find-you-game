var hsp = 0;
var vsp = 0;

// Movement & direction
if (keyboard_check(vk_right)) {
    hsp = move_speed;
    sprite_index = spr_braveson_right;
} else if (keyboard_check(vk_left)) {
    hsp = -move_speed;
    sprite_index = spr_braveson_left;
} else if (keyboard_check(vk_up)) {
    vsp = -move_speed;
    sprite_index = spr_braveson_up;
} else if (keyboard_check(vk_down)) {
    vsp = move_speed;
    sprite_index = spr_braveson_down;
}

// Apply movement
x += hsp;
y += vsp;

// Shoot timer countdown
if (shoot_timer > 0) {
    shoot_timer -= 1;
}

// Shooting logic (space bar)
if (keyboard_check(vk_space) && shoot_timer <= 0) {
    if (global.bullets > 0) {
        var bullet = instance_create_layer(x, y, "Instances_1", obj_bullets);

        // Set bullet direction based on sprite
        switch (sprite_index) {
            case spr_braveson_right: bullet.direction = 0; break;
            case spr_braveson_up: bullet.direction = 90; break;
            case spr_braveson_left: bullet.direction = 180; break;
            case spr_braveson_down: bullet.direction = 270; break;
        }

        bullet.speed = 10;
        shoot_timer = shoot_cooldown;
        global.bullets -= 1;
    } else {
        out_of_bullets_msg_timer = 60;
    }
}

// Reduce "out of bullets" message timer
if (out_of_bullets_msg_timer > 0) {
    out_of_bullets_msg_timer -= 1;
}

// Update all_coins_collected flag if player collected all coins
if (!global.all_coins_collected && global.collected_coins == global.total_coins) {
    global.all_coins_collected = true;
}
