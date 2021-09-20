#include <iostream>
#include "AreasBuilder.h"

int main() {

    AreasBuilder builder(2, 8, 8);
    std::vector<std::vector<int>> res =  builder.getAreas();
    std::cout << res.size() << " ";
    std::cout << res[1].size() << std::endl;

   for(int i = 0; i < res.size(); i++){
        for(int j = 0; j < res[i].size(); j++){
            std::cout << res[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << "string" << std::endl;

}
