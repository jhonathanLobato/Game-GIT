///CONTROLES
var _up     = keyboard_check(vk_space);
///var _down   = keyboard_check(vk_down);
var _left   = keyboard_check(vk_left);
var _right  = keyboard_check(vk_right);


/// APLICANDO VELOCIDADE
var _movi = _right - _left;
velh = _movi * velo;
velv = velv + grav;

if(velh != 0) image_xscale = sign(velh);


/// COLISÃO HORIZONTAL
if place_meeting(x + velh, y, all){
	while(!place_meeting(x + sign(velh), y, all)){
		x = x + sign(velh)
	}
	velh = 0;
}
x = x + velh;


/// COLISÃO VERTICAL
if place_meeting(x, y + velv, all){
	while(!place_meeting(x, y + sign(velv), all)){
		y = y + sign(velv)
	}
	velv = 0;
}
y = y + velv;

/// PULO
if place_meeting(x, y + 1, all) and _up{
	velv -= 8;
}
	

