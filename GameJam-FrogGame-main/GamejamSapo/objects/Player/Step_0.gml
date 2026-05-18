// 1. Pega os inputs do nosso objeto de controle
_h_input = global.key_right - global.key_left;
_v_input = global.key_down - global.key_up;

// 2. Calcula a direção e velocidade (Evita o sapo ser super veloz na diagonal)
if (_h_input != 0 || _v_input != 0) {
    var _dir = point_direction(0, 0, _h_input, _v_input);
    h_spd = lengthdir_x(move_spd, _dir);
    v_spd = lengthdir_y(move_spd, _dir);
} else {
    h_spd = 0;
    v_spd = 0;
}

// 3. Sistema de Colisão (Para não atravessar as paredes/objetos)
if (place_meeting(x + h_spd, y, ObjCollision)) {
    while (!place_meeting(x + sign(h_spd), y, ObjCollision)) {
        x += sign(h_spd);
    }
    h_spd = 0;
}
x += h_spd;

if (place_meeting(x, y + v_spd, ObjCollision)) {
    while (!place_meeting(x, y + sign(v_spd), ObjCollision)) {
        y += sign(v_spd);
    }
    v_spd = 0;
}
y += v_spd;