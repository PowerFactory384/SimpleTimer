/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

delta_step();

if(!global.gui_enabled && global.time_go == true) {
	if(!global.reverse && global.timer > 0) {
		global.timer -= d(1);
	} else if (global.reverse && global.timer < 359998999) {
		global.timer += d(1);
	}
}

adj_time = ceil(global.timer/1000);

hour = floor(adj_time / 3600);
minute = floor(( adj_time % 3600 ) / 60);
sec = floor(( adj_time % 3600 ) % 60);

s_hour = string(hour);
s_minute = string(minute);
s_sec = string(sec);

if(hour < 10) s_hour = "0" + s_hour;
if(minute < 10) s_minute = "0" + s_minute;
if(sec < 10) s_sec = "0" + s_sec;

gui_adj_time = ceil(global.adj_timer/1000);

gui_hour = floor(gui_adj_time / 3600);
gui_minute = floor(( gui_adj_time % 3600 ) / 60);
gui_sec = floor(( gui_adj_time % 3600 ) % 60);

gui_s_hour = string(gui_hour);
gui_s_minute = string(gui_minute);
gui_s_sec = string(gui_sec);

if(gui_hour < 10) gui_s_hour = "0" + gui_s_hour;
if(gui_minute < 10) gui_s_minute = "0" + gui_s_minute;
if(gui_sec < 10) gui_s_sec = "0" + gui_s_sec;

global.timer_text = s_hour + ":" + s_minute + ":" + s_sec;