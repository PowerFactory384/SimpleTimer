/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(!global.gui_enabled) {
	if(mouse_check_button_pressed(mb_left)) {
		if(point_in_rectangle(mouse_x, mouse_y, 20, 300, 195, 340)) {
			global.timer += 3600000;
		} else if(point_in_rectangle(mouse_x, mouse_y, 215, 300, 390, 340)) {
			global.timer += 600000;
		} else if(point_in_rectangle(mouse_x, mouse_y, 410, 300, 585, 340)) {
			global.timer += 300000;
		} else if(point_in_rectangle(mouse_x, mouse_y, 605, 300, 780, 340)) {
			global.timer += 60000;
		} else if(point_in_circle(mouse_x, mouse_y, 40, 40, 20)) {
			global.timer = 0;
		} else if(point_in_circle(mouse_x, mouse_y, 100, 40, 20)) {
			global.time_go = !global.time_go;
		} else if(point_in_circle(mouse_x, mouse_y, 160, 40, 20)) {
			global.reverse = !global.reverse;
		} else if(point_in_circle(mouse_x, mouse_y, 700, 40, 20)) {
			global.dark = !global.dark;
		} else if(point_in_circle(mouse_x, mouse_y, 760, 40, 20)) {
			global.gui_enabled = true;
			global.adj_timer = global.timer;
		}
	}
} else {
	if(mouse_check_button_pressed(mb_left)) {
		if(point_in_circle(mouse_x, mouse_y,250, 265, 20)) {
			global.hour_is_ten = !global.hour_is_ten;
		} else if(point_in_circle(mouse_x, mouse_y, 430, 265, 20)) {
			global.minute_is_ten = !global.minute_is_ten;
		} else if(point_in_circle(mouse_x, mouse_y, 610, 265, 20)) {
			global.sec_is_ten = !global.sec_is_ten;
		} else if(point_in_rectangle(mouse_x, mouse_y, 170, 240, 210, 260)) {
			if(!global.hour_is_ten) {
				if(gui_hour < 99) global.adj_timer += 3600000;
			} else {
				if(gui_hour < 90) global.adj_timer += 36000000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 170, 270, 210, 290)) {
			if(!global.hour_is_ten) {
				if(gui_hour > 0) global.adj_timer -= 3600000;
			} else {
				if(gui_hour > 9) global.adj_timer -= 36000000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 350, 240, 390, 260)) {
			if(!global.minute_is_ten) {
				if(gui_minute < 59) global.adj_timer += 60000;
			} else {
				if(gui_minute < 50) global.adj_timer += 600000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 350, 270, 390, 290)) {
			if(!global.minute_is_ten) {
				if(gui_minute > 0) global.adj_timer -= 60000;
			} else {
				if(gui_minute > 9) global.adj_timer -= 600000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 530, 240, 570, 260)) {
			if(!global.sec_is_ten) {
				if(gui_sec < 59) global.adj_timer += 1000;
			} else {
				if(gui_sec < 50) global.adj_timer += 10000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 530, 270, 570, 290)) {
			if(!global.sec_is_ten) {
				if(gui_sec > 0) global.adj_timer -= 1000;
			} else {
				if(gui_sec > 9) global.adj_timer -= 10000;
			}
		} else if(point_in_rectangle(mouse_x, mouse_y, 0, 0, 800, 40) || point_in_rectangle(mouse_x, mouse_y, 0, 320, 800, 360) || point_in_rectangle(mouse_x, mouse_y, 0, 40, 40, 320) || point_in_rectangle(mouse_x, mouse_y, 760, 40, 800, 360)) {
			global.gui_enabled = false;
			global.timer = global.adj_timer;
		}
	}
}