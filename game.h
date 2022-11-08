//
// Created by User on 31.10.2022.
//

#ifndef SNAKE_GAME_H
#define SNAKE_GAME_H

#define UP 1
#define DOWN -1
#define RIGHT 2
#define LEFT -2
#define MAX 80 //max length of the snake

void initGrid(int,int);
void drawGrid();
void drawSnake();
void drawFood();
void random(int &x,int &y);

#endif //SNAKE_GAME_H
