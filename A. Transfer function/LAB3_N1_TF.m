clc;
clear all;
close all;

syms s

G1 = tf ([1],[1 0 0]);
G2 = tf ([1],[1 1]);
G3 = tf ([1],[1 0]);
H1 = tf ([1],[1 0]);
H2 = tf ([1],[1 -1]);
H3 = tf ([1],[1 -2]);

System = append(G1,G2,G3,H1,H2,H3);
input = 1;
output = 3;
q = [1 -4 0 0 0
     2 1 -5 0 0
     3 2  1 -5 -6
     4 2 0 0 0
     5 2 0 0 0
     6 3 0 0 0 ];

T = connect(System,q,input,output);
T = tf(T);
T = minreal(T)