#include <iostream>

using namespace std;

using player = bool;
enum
{
        ant = false,
        bug = true
};

constexpr player game_winner(const int rock, const int my_power, const int adversary_power, const player turn)
{
        return (rock <= 0) ? !turn : game_winner(rock - my_power, adversary_power, my_power, !turn);
}

int main()
{
        int n, a, b;
        std::cin >> n >> a >> b;
        player winner = game_winner(n, a, b, ant);
        cout << ((winner) ? "Bug" : "Ant") << endl;
        return 0;
}
