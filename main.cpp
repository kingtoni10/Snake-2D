//This project was done with the help of glut and minGW

#include <GL/gl.h>
#include <GL/glut.h>  //min gw
#include "game.h"
#include <stdlib.h>

#define COLUMNS 30 //change these to increase/decrese dimensions
#define ROWS 30
#define FPS 8  //"theoretical" fps, increase for more speed

extern short sDirection; //to be able to use the snakeDirection

bool GameOver=false;

void timer_callback(int);
void display_callback();
void reshape_callback(int, int);
void keyboard_callback(int, int, int);

int score=0;

void init()
{
    glClearColor(0, 0, 0, 1.0);//black background
    initGrid(COLUMNS, ROWS);
}

int main(int argc, char **argv)
{
    glutInit(&argc,argv);
    glutInitDisplayMode(GLUT_RGB|GLUT_DOUBLE); //so the animation works on the window
    // not necessary glutInitWindowPosition();
    glutInitWindowSize(500,500);  //the size of the window
    glutCreateWindow("Snakey boi"); //name at the top of window
    glutDisplayFunc(display_callback);
    glutReshapeFunc(reshape_callback);
    glutTimerFunc(0, timer_callback,0 );//0 means that there is no start delay
    glutSpecialFunc(keyboard_callback);
    init();
    glutMainLoop();


    return 0;
}

void display_callback()
{
    glClear(GL_COLOR_BUFFER_BIT);
    drawGrid();
    drawSnake();
    drawFood();
    if(GameOver)
    {
        char _score[5];
        itoa(score,_score,10);
        char text[50]="Your score was: ";
        strcat(text,_score);
        MessageBox(NULL,text,"GAME OVER",0);
        exit(0);
    }
    glutSwapBuffers();//displays the next frame
}
void reshape_callback(int w,int h)
{
    glViewport(0,0,(GLsizei)w,(GLsizei)h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0.0,COLUMNS,0.0,ROWS,-1,1);//40x40 screen, I dont use 3D so Z coords are weird
    glMatrixMode(GL_MODELVIEW);
}

void timer_callback(int)
{
    glutPostRedisplay();
    glutTimerFunc(1000/FPS,timer_callback,0);
}


void keyboard_callback(int key,int,int)
{
    switch(key) //the case to not walk backwards
    {
        case GLUT_KEY_UP:
            if (sDirection!=DOWN)
                sDirection=UP;
            break;
        case GLUT_KEY_DOWN:
            if (sDirection!=UP)
                sDirection=DOWN;
            break;
        case GLUT_KEY_RIGHT:
            if (sDirection!=LEFT)
                sDirection=RIGHT;
            break;
        case GLUT_KEY_LEFT:
            if (sDirection!=RIGHT)
                sDirection=LEFT;
            break;
    }
}