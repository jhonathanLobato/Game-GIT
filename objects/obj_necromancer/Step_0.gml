velocidade_vertical = velocidade_vertical + gravidade;

velocidade_horizontal = velocidade * dir;

if(velocidade_horizontal != 0) image_xscale = sign(velocidade_horizontal);

#region COLISÃO HORIZONTAL
if place_meeting(x + velocidade_horizontal, y, obj_block){
	while(!place_meeting(x + sign(velocidade_horizontal), y, obj_block)){
		x = x + sign(velocidade_horizontal)
	}
	velocidade_horizontal = 0;
	dir = dir * -1;
}
x = x + velocidade_horizontal;
#endregion

#region COLISÃO VERTICAL
if place_meeting(x, y + velocidade_vertical, obj_block){
	while(!place_meeting(x, y + sign(velocidade_vertical), obj_block)){
		y = y + sign(velocidade_vertical)
	}
	velocidade_vertical = 0;
}
y = y + velocidade_vertical;
#endregion

