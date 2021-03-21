// -----------------------------------------------------------------------------
// C-Skeleton to be used with HAM Library from www.ngine.de
// -----------------------------------------------------------------------------
#include <mygba.h>
#include <stdlib.h>

#define u32 unsigned int
#define RGB(r, g, b) (r | (g << 5) | (b << 10))

extern void drawCircle(u32 x, u32 y, u32 radius, u32 color);
extern void drawLine(u32 x1, u32 y1, u32 x2,u32 y2, u32 color);
extern void fillRect(u32 x,u32 y, u32 width, u32 height, u32 color);


void Aymara4x(void)
// Example function displaying some reactangles on screen, for testing purposes
{
    u32 i, j;
    u32 color[7] = {RGB(31,31,31), RGB(31,27,0), RGB(31,19,0), RGB(27,0,0), RGB(12,6,17), RGB(0,8,21), RGB(8,21,12)};
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            fillRect(j*11, i*11 + 77, 11, 11, color[(j-i+7)%7]);
            fillRect(143 - j*11, i*11 + 77, 11, 11, color[(j-i+7)%7]);
            fillRect(j*11, 66 - i*11, 11, 11, color[(j-i+7)%7]);
            fillRect(143 - j*11, 66 - i*11, 11, 11, color[(j-i+7)%7]);
        }
    }
}


// -----------------------------------------------------------------------------
// Project Entry Point
// -----------------------------------------------------------------------------
int main(void)
{
	// Initialize GBA and display
   *(unsigned short *) 0x4000000 = 3 | 0x400;

	// Beautiful test of fillRect only (comment these next 2 lines to test the other functions)
//   Aymara4x();
//   while(1);

	// Test of all functions
   fillRect(0,0,100,10,31<<5);
   fillRect(105,45,30,70,RGB(25,19,12));
   drawLine(0,0,0,160,31);
   drawLine(0,80,120,80,31);
   drawLine(0,0,100,100,31<<10);
   drawLine(0,100,100,0,31<<10);
   drawCircle(75,75,20,31<<10);
   while(1);

	return 0;
}

