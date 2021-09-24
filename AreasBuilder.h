
#include <vector>
#include <random>
#include <cmath>

struct BS_Point{
    int x_coord = 0;
    int y_coord = 0;

    BS_Point(int n_x, int n_y)
    {

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
    std::vector<int>pointsCount;

    static double countDistance( BS_Point base, int x, int y );

public:

    AreasBuilder(int n_areasCounter, int n_fwidth, int n_fheight)
    {

        BScount = n_areasCounter;
        fieldWidth = n_fwidth;
        fieldHeight = n_fheight;

        generateBS();

    }

    void generateBS();
    std::vector<std::vector<int>> getAreas();
    void drawAreas();
    void countPoints();

};

