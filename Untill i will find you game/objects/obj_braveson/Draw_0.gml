draw_self();

if (out_of_bullets_msg_timer > 0) {
    draw_set_color(c_red);
    draw_text(room_width / 2 - 50, room_height / 2, "Out of bullets!");
    draw_set_color(c_white);
}
