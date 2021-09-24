#include <iostream>
#include "AreasBuilder.h"
#include <SFML/Window.hpp>
#include <SFML/OpenGL.hpp>
#include "SFML/Graphics.hpp"


using namespace sf;

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
                auto res = countDistance(BSlist[k], j, i);

                if (res < absolute)
                {
                    absolute = res;
                    if(res == 0)
                    {
                        BSindex = 8;
                    }
                    else
                    {
                        BSindex = k;
                    }

                }

            }

            field[i].push_back(BSindex);
            absolute = INT32_MAX;
        }
    }
    countPoints();
    return field;
}

void AreasBuilder::drawAreas()
{

    RenderWindow window(VideoMode(400, 400), "SFML Works!");
    while (window.isOpen())
    {
        // Обрабатываем очередь событий в цикле
        Event event;
        while (window.pollEvent(event))
        {
            // Пользователь нажал на «крестик» и хочет закрыть окно?
            if (event.type == Event::Closed)
                window.close(); // тогда закрываем его
        }

        window.clear(Color(250, 220, 100, 0));

        std::vector<ConvexShape> convexes;

        int counter = 0;
        int index = 0;
        while(counter < BScount)
        {
            ConvexShape convex;
            convex.setPointCount(pointsCount[counter]);
            for(int i = 0; i < field.size(); i++)
            {
                for(int j = 0; j < field[i].size(); j++)
                {
                    if(field[i][j] == counter)
                    {
                        float x = float(i);
                        float y = float(j);
                        convex.setPoint(index, Vector2f(x, y));
                        index++;
                    }
                }
            }
            index = 0;
            counter++;
            //convex.setFillColor(Color::Black);
            convexes.push_back(convex);
        }
        for(int i = 0; i < convexes.size(); i++)
        {
           //convexes[i].setFillColor(Color::Black);
           window.draw(convexes[i]);
        }
        // Устанавливаем координаты вершин
       /* convex.setPoint(0, Vector2f(0.f, 0.f));
        convex.setPoint(1, Vector2f(150.f, 10.f));
        convex.setPoint(2, Vector2f(120.f, 90.f));
        convex.setPoint(3, Vector2f(30.f, 100.f));
        convex.setPoint(4, Vector2f(5.f, 50.f));

        convex.setFillColor(Color::Black); // устанавливаем цвет многоугольника - черный
        convex.move(1, 150); // теперь сдвинем его вниз и чуть-чуть вправо
        window.draw(convex); // отрисовка многоугольника*/



        // Отрисовка окна
        window.display();
    }

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
        std:: cout << tmp.x_coord << ", " << tmp.y_coord << std::endl;

    }


}

void AreasBuilder::countPoints() {

    int counter = 0;


    while(counter < BScount)
    {
        int tmp = 0;
        for(int i = 0; i < field.size(); i++)
        {
            for(int j = 0; j < field[i].size(); j++)
            {
                if(field[i][j] == counter)
                {
                    tmp++;
                }
            }
        }
        pointsCount.push_back(tmp);
        counter++;
    }



}

