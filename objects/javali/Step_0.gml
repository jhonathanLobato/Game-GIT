if place_meeting(x + velocidade_horizontal, y, obj_chao){
	while(!place_meeting(x + sign(velocidade_horizontal), y, obj_chao)){
		x = x + sign(velocidade_horizontal)
	}
	velocidade_horizontal = 0;
}
x = x + velocidade_horizontal;


if place_meeting(x, y + velocidade_vertical, obj_chao){
	while(!place_meeting(x, y + sign(velocidade_vertical), obj_chao)){
		y = y + sign(velocidade_vertical)
	}
	velocidade_vertical = 0;
}
y = y + velocidade_vertical;