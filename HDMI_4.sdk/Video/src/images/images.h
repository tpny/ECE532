#ifndef SRC_IMAGES_IMAGES_H_
#define SRC_IMAGES_IMAGES_H_

#include "tanks.h"

void player_load_image(unsigned* addr1, unsigned* addr2, unsigned* addr3, unsigned* addr4)
{
	tankUp(addr1);
	tankDown(addr2);
	tankLeft(addr3);
	tankRight(addr4);
}

void enemy_load_image(unsigned* addr1, unsigned* addr2, unsigned* addr3, unsigned* addr4)
{
	E_tankUp(addr1);
	E_tankDown(addr2);
	E_tankLeft(addr3);
	E_tankRight(addr4);
}

void wall_load_image(unsigned* addr1, unsigned* addr2, unsigned* addr3, unsigned* addr4)
{
	wall_1(addr1);
	wall_2(addr2);
	wall_3(addr3);
	wall_4(addr4);
}
#endif
