/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();

delta_init();
delta_set_max_lag_compensation(100);

global.timer = 0;
global.adj_timer = 0;
global.timer_text = "00:00:00";

global.time_go = true;

global.reverse = false;

global.dark = true;

global.gui_enabled = false;

global.hour_is_ten = false;
global.minute_is_ten = false;
global.sec_is_ten = false;

scribble_font_set_default("font_12px");