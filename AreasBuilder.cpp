#include <iostream>
#include "AreasBuilder.h"



double AreasBuilder::countDistance(BS_Point base, int x, int y)
{

    double distance =  pow((base.x_coord - x), 2) + pow((base.y_coord - y), 2);
    return distance;

}

std::vector<std::vector<int>> AreasBuilder::getAreas()
{

    int absolute = INT32_MAX;
    int BSindex = 0;

    for(int i = 0; i < fieldHeight; i++)
    {
        field.emplace_back();

        for(int j = 0; j < fieldWidth; j++)
        {
            for(int k = 0; k < BSlist.size(); k++)
            {
                if((i == BSlist[k].x_coord) && (j == BSlist[k].y_coord))
                {
                    BSindex = 8;
                    field[i].push_back(BSindex);


                }
                else {
                    auto res = countDistance(BSlist[k], i, j);

                    if (res < absolute) {
                        absolute = res;
                        BSindex = k;
                    }
                }

            }

            field[i].push_back(BSindex);
            absolute = INT32_MAX;
        }
    }
    return field;
}

void AreasBuilder::drawAreas()
{

}

void AreasBuilder::generateBS()
{


    srand(time(NULL));
    for(int i = 0; i < BScount; ++i)
    {

        //Повторяющиеся координаты!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        int x = 0 + rand() % (fieldWidth);
        int y = 0 + rand() % (fieldHeight);
        BS_Point tmp(x, y);
        BSlist.push_back(tmp);

    }



}
