// 1. Checagem de Teclado (O Step verifica isso 60 vezes por segundo)
global.key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
global.key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
global.key_up    = keyboard_check(ord("W")) || keyboard_check(vk_up);
global.key_down  = keyboard_check(ord("S")) || keyboard_check(vk_down);

// 2. Exemplo de Mutação (Ação especial do Sapo)
global.key_action = keyboard_check_pressed(vk_space);