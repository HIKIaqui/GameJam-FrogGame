randomize();
global.deltaFactor = 1;
#macro delta global.deltaFactor
gpu_set_texfilter(false);
surface_resize(application_surface, 640, 360);
display_set_gui_size(640, 360);

window_set_size(1280, 720);
window_center();

global.paused = false;



// Inicializa as variáveis de controle (0 significa que o botão não está apertado)
global.key_left  = 0;
global.key_right = 0;
global.key_up    = 0;
global.key_down  = 0;

// Variáveis extras que podem ser úteis para as mutações do sapo
global.key_action = 0;