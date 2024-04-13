#region CONTROLES
var _up     = keyboard_check(vk_space);
var _left   = keyboard_check(ord("A"));
var _right  = keyboard_check(ord("D"));
var _ataque = keyboard_check(vk_shift);

#endregion

#region APLICANDO VELOCIDADE
var _movi = _right - _left;
velocidade_horizontal = _movi * velocidade;
velocidade_vertical = velocidade_vertical + gravidade;

#endregion

#region COLISÃO HORIZONTAL
if place_meeting(x + velocidade_horizontal, y, obj_block){
	while(!place_meeting(x + sign(velocidade_horizontal), y, obj_block)){
		x = x + sign(velocidade_horizontal)
	}
	velocidade_horizontal = 0;
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

#region PULO
if place_meeting(x, y + 1, obj_block) and _up{
	velocidade_vertical -= 8;
}
#endregion

#region TROCA DE SPRITES
if(velocidade_horizontal != 0) image_xscale = sign(velocidade_horizontal);

if(!place_meeting(x, y+1, obj_block))
{
	sprite_index = spt_player_jumpInicial;
	if(sign(velocidade_vertical > 0.5))
	{
		sprite_index = spt_player_jumpFinal;
	}else{
		sprite_index = spt_player_jumpInicial;
	}
}else{
	if(velocidade_horizontal != 0)
	{
		sprite_index = spt_player_run;
	}
}
if place_meeting(x, y+1, obj_block)
{
	sprite_index = spt_player_parado;
}
if velocidade_horizontal != 0
{
	if place_meeting(x, y+1, obj_block)
	{
		sprite_index = spt_player_run;
	}
}

#endregion

#region ATAQUE
if _ataque{
	sprite_index = spt_player_ataque;
}

#endregion

