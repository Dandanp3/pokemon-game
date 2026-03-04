var right, left, top, down  
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
down = keyboard_check(ord("S"))
top = keyboard_check(ord("W"))

// calculando posicionamento
var _hspd = (right - left) * spd;
var _vspd = (down - top) * spd;

x += _hspd;
y += _vspd;

// SISTEMA DE SPRITES
if (_hspd != 0 or _vspd != 0) {
    image_speed = 1;
    
    // salva a direção na variável 'dir'
    if (down)  { sprite_index = sprPlayerWalkDown;  dir = 0; }
    if (left)  { sprite_index = sprPlayerWalkLeft;  dir = 1; }
    if (right) { sprite_index = sprPlayerWalkRight; dir = 2; }
    if (top)   { sprite_index = sprPlayerWalkTop;   dir = 3; }
} 
else {
    image_speed = 0;
    sprite_index = sprPlayerIdle; 
    

    image_index = dir; 
}