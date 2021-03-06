// PANPOT LOGARITMICO

import("stdfaust.lib");

// segnale in ingresso:
input = no.noise;

// controllo ampiezza segnale
input_amp = input * hslider("ampiezza segnale", 0, 0, 1, 0.01);

// panpot
panner_slider = hslider("panpot segnale",0,0,1, 0.01); // da 0. a 1.
panner_curve_1 = sin(panner_slider* ma.PI/2); // curva del panner 1- mezzo seno
panner_curve_2 = cos(panner_slider* ma.PI/2); // curva del panner 2- mezzo seno
process = input_amp*panner_curve_2, input_amp*panner_curve_1;
