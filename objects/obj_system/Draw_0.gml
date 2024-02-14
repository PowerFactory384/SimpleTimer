/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var timer = scribble(global.timer_text);

var ui_c = global.dark ? c_white : c_black;
var back_c = global.dark ? c_black : c_white;

draw_rectangle_color(0, 0, 800, 360, back_c, back_c, back_c, back_c, 0);

timer.starting_format("font_96px", ui_c);
timer.align(fa_center, fa_middle);
timer.draw(400, 150);

draw_rectangle_color(20, 300, 195, 340, ui_c, ui_c, ui_c, ui_c, true);
draw_rectangle_color(215, 300, 390, 340, ui_c, ui_c, ui_c, ui_c, true);
draw_rectangle_color(410, 300, 585, 340, ui_c, ui_c, ui_c, ui_c, true);
draw_rectangle_color(605, 300, 780, 340, ui_c, ui_c, ui_c, ui_c, true);

var set1 = scribble("1 Hour").starting_format("font_12px", ui_c).align(fa_center, fa_middle).draw(107.5, 320);
var set2 = scribble("10 Minutes").starting_format("font_12px", ui_c).align(fa_center, fa_middle).draw(302.5, 320);
var set3 = scribble("5 Minutes").starting_format("font_12px", ui_c).align(fa_center, fa_middle).draw(497.5, 320);
var set4 = scribble("1 Minutes").starting_format("font_12px", ui_c).align(fa_center, fa_middle).draw(692.5, 320);

draw_circle_color(40, 40, 20, ui_c, ui_c, true);
draw_circle_color(100, 40, 20, ui_c, ui_c, true);
draw_circle_color(160, 40, 20, ui_c, ui_c, true);
draw_circle_color(700, 40, 20, ui_c, ui_c, true);
draw_circle_color(760, 40, 20, ui_c, ui_c, true);

draw_sprite_ext(spr_init, 0, 41, 41, 0.65, 0.65, 0, ui_c, 1);
draw_sprite_ext(spr_start, global.time_go, 101, 41, 0.65, 0.65, 0, ui_c, 1);
draw_sprite_ext(spr_reverse, global.reverse, 161, 41, 0.8, 0.8, 0, ui_c, 1);
draw_sprite_ext(spr_dark, global.dark, 701, 41, 0.8, 0.8, 0, ui_c, 1);
draw_sprite_ext(spr_edit, 0, 761, 41, 0.65, 0.65, 0, ui_c, 1);

if(global.gui_enabled) {
	draw_rectangle_color(40, 40, 760, 320, back_c, back_c, back_c, back_c, false);
	draw_rectangle_color(40, 40, 760, 320, ui_c, ui_c, ui_c, ui_c, true);
	
	var s_adj_hour = scribble(gui_s_hour).starting_format("font_96px", ui_c).align(fa_center, fa_middle).draw(220, 150);
	var s_adj_min = scribble(gui_s_minute).starting_format("font_96px", ui_c).align(fa_center, fa_middle).draw(400, 150);
	var s_adj_sec = scribble(gui_s_sec).starting_format("font_96px", ui_c).align(fa_center, fa_middle).draw(580, 150);
	
	draw_rectangle_color(170, 240, 210, 260, ui_c, ui_c, ui_c, ui_c, true);
	draw_rectangle_color(170, 270, 210, 290, ui_c, ui_c, ui_c, ui_c, true);
	
	draw_sprite_ext(spr_start, 0, 190, 250, 0.3, 0.65, 90, ui_c, 1);
	draw_sprite_ext(spr_start, 0, 190, 280, 0.3, 0.65, 270, ui_c, 1);
	
	draw_circle_color(250, 265, 20, ui_c, ui_c, true);
	draw_sprite_ext(spr_10_1, global.hour_is_ten, 251, 266, 0.65, 0.65, 0, ui_c, 1);

	draw_rectangle_color(350, 240, 390, 260, ui_c, ui_c, ui_c, ui_c, true);
	draw_rectangle_color(350, 270, 390, 290, ui_c, ui_c, ui_c, ui_c, true);
	
	draw_sprite_ext(spr_start, 0, 370, 250, 0.3, 0.65, 90, ui_c, 1);
	draw_sprite_ext(spr_start, 0, 370, 280, 0.3, 0.65, 270, ui_c, 1);
	
	draw_circle_color(430, 265, 20, ui_c, ui_c, true);
	draw_sprite_ext(spr_10_1, global.minute_is_ten, 431, 266, 0.65, 0.65, 0, ui_c, 1);

	draw_rectangle_color(530, 240, 570, 260, ui_c, ui_c, ui_c, ui_c, true);
	draw_rectangle_color(530, 270, 570, 290, ui_c, ui_c, ui_c, ui_c, true);
	
	draw_sprite_ext(spr_start, 0, 550, 250, 0.3, 0.65, 90, ui_c, 1);
	draw_sprite_ext(spr_start, 0, 550, 280, 0.3, 0.65, 270, ui_c, 1);
	
	draw_circle_color(610, 265, 20, ui_c, ui_c, true);
	draw_sprite_ext(spr_10_1, global.sec_is_ten, 611, 266, 0.65, 0.65, 0, ui_c, 1);
}

//draw_text_scribble(60, 60, string(mouse_x) + ", " + string(mouse_y));