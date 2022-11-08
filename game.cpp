//
// Created by User on 31.10.2022.
//

#include "game.h"
#include <GL/glut.h>
#include <GL/gl.h>
#include <ctime>  //useful for the random
int gridX,gridY;
int snakelength=4;//the initial length
short sDirection =RIGHT;
bool food=true;
int foodX,foodY;
extern bool GameOver;
extern int score;
int posX[MAX]={10,10,10,10};
int posY[MAX]={10,9,8,7};//the positions for snake
int extraX[10],extraY[10],extralength;
void initGrid(int x,int y) //just to initialize
{
    gridX=x;
    gridY=y;
}

void unit(int, int);
void drawGrid()
{
    for (int x=0;x<gridX;x++) {
        for (int y = 0; y < gridY; y++)
        {
            unit(x, y);
        }
    }
};//the function that draws the multiple grids

void unit(int x,int y)
{
    if (x==0 or y==0 or x==gridX-1 or y==gridY-1) //if boxes are at the edge, the border is turned red
    {
        //glLineWidth(3.0);
        //glColor3f(1.0,0.0,0.0);
        glColor3f(1,0,0);
        glRectf(x,y,x+1,y+1);
    }
    else
    {
        glLineWidth(1.0);
        glColor3f(0,0,0); //1,1,1 for white grid
    }
    for (int i=0;i<extralength;i++)
        if(x==extraX[i] and y==extraY[i])
        {
            glLineWidth(3.0);
            glColor3f(1.0, 0.0, 0.0);
        }

    glBegin(GL_LINE_LOOP);
        glVertex2f(x,y);
        glVertex2f(x+1,y);
        glVertex2f(x+1,y+1);
        glVertex2f(x,y+1); //the exact coords to make the tini tiny squares
    glEnd();
}

void drawSnake()
{
    for (int i=snakelength-1;i>0;i--)
    {
        posX[i]=posX[i-1];
        posY[i]=posY[i-1];
    }//the body pos
    if(sDirection==UP) posY[0]++;
    else if (sDirection==DOWN) posY[0]--;
    else if(sDirection==RIGHT) posX[0]++;
    else if(sDirection==LEFT) posX[0]--;
    //the movement of the snake, could have been done with case, but whatever
    for (int i=0;i<snakelength;i++)
    {
        if(i==0)
            glColor3f(0,0.5,1);
        else glColor3f(0,1,0);
        glRectd(posX[i],posY[i],posX[i]+1,posY[i]+1);
    }//draws the head and body

    if(posX[0]==0 or posX[0]==gridX-1 or posY[0]==0 or posY[0]==gridY-1) GameOver=true; //condition to end game when external wall is hit
    for(int j=1;j<snakelength;j++)
    {
        if(posX[j]==posX[0] && posY[j]==posY[0])
            GameOver=true;
    }
    //condition to end game when tail is hit
    for (int i=0;i<extralength;i++)
        if(posX[0]==extraX[i] and posY[0]==extraY[i]) GameOver=true;
    if(posX[0]==foodX and posY[0]==foodY)
    {
        score++;
        if(snakelength<MAX)
            snakelength++;
        food=true;
    }
}
void drawFood()
{

    if (food and score%3==0 and score>0)
    {
        random(foodX,foodY);
        extraX[extralength]=foodX;
        extraY[extralength]=foodY;
        extralength++;
    }
    bool cond=true;
    if (food)
        do
        {
            cond=true;
            random(foodX, foodY);
            for (int j=0;j<10;j++)
                if (extraX[j]==foodX and extraY[j]==foodY) cond=false;
        }
        while (cond==false);
    food=false;
    glColor3f(0,0,1);
    glRectf(foodX,foodY,foodX+1,foodY+1);
}

void random(int &x,int &y)
{
    int maxiX= gridX-2;
    int maxiY=gridY-2;
    int miniX= 1;
    int miniY=1;
    srand(time(NULL));
    x=miniX+rand()% (maxiX-miniX);
    y=miniY+rand()% (maxiY-miniY);
    rand();
}