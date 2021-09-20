//
// Created by buhvalov on 20.09.2021.
//

#ifndef VORONOIAREAS_AREASBUILDER_H
#define VORONOIAREAS_AREASBUILDER_H
#include <vector>
#include <random>
#include <math.h>

struct BS_Point{
    int x_coord = 0;
    int y_coord = 0;

    BS_Point(int n_x, int n_y){

        x_coord = n_x;
        y_coord = n_y;

    }

};



class AreasBuilder {

private:

    int BScount = 0;
    int fieldWidth = 0;
    int fieldHeight = 0;
    std::vector<std::vector<int>> field;
    std::vector<BS_Point> BSlist;

    double countDistance( BS_Point base, int x, int y );

public:

    AreasBuilder(int n_areasCounter, int n_fwidth, int n_fheight){

        BScount = n_areasCounter;
        fieldWidth = n_fwidth;
        fieldHeight = n_fheight;

        // VECTOR INPUT

        generateBS();

    }

    void generateBS();
    std::vector<std::vector<int>> getAreas();
    void drawAreas();


};


#endif //VORONOIAREAS_AREASBUILDER_H
