// Safety checks in case variables don't exist yet
if (!variable_global_exists("collected_coins")) global.collected_coins = 0;
if (!variable_global_exists("total_coins")) global.total_coins = 0;
if (!variable_global_exists("bullets")) global.bullets = 0;

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Draw coins collected / total coins
draw_text(10, 30, "Coins: " + string(global.collected_coins) + " / " + string(global.total_coins));

// Draw bullets left
draw_text(10, 50, "Bullets: " + string(global.bullets));
