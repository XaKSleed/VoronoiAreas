#include <iostream>
#include "AreasBuilder.h"

int main()
{

    AreasBuilder builder(5, 400, 400);
    std::vector<std::vector<int>> res =  builder.getAreas();



   for(int i = res.size()-1; i >= 0; i--)
   {
        for(int j = 0; j < res[i].size(); j++)
        {
            std::cout << res[i][j] << " ";
        }
        std::cout << std::endl;
    }

    builder.drawAreas();

}
