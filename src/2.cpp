#include <iostream>
#include <stdio.h>
#include <cstring>
using namespace std;

#define COL 3
#define ROW 3

int chess[3][3];      //棋盘，其中电脑使用○（1），玩家使用×（-1），空格子使用□（0），以电脑为MAX层
int chessboard[3][3]; //电脑计算权值使用的棋盘；  1代表空 2代表人 5代表电脑
int score[3][3];      //电脑计算权值使用
int x, y, count;      // x表示当前局面○三子一线的数目，y表示当前局面×三子一线的数目，count表示当前○和×的总数

void Reset()
{
    memset(chess, 0, sizeof(chess));
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
            chessboard[i][j] = 1;
    x = 0;
    y = 0;
    count = 0;
}

void PcPlay()
{
    int sum = 0;
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
            score[i][j] = 0;

    // 对每行进行分数统计
    for (int i = 0; i < ROW; i++)
    {
        for (int j = 0; j < COL; j++)
            sum += chessboard[i][j];

        if (sum == 3)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 1;
            }
        }
        else if (sum == 4)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 10;
            }
        }
        else if (sum == 8)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 50;
            }
        }
        else if (sum == 7)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 200; //把行列的重要性比对角线高
            }
        }
        else if (sum == 5)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 500;
            }
        }
        else if (sum == 11)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[i][k] == 1)
                    score[i][k] += 1000;
            }
        }
        sum = 0;
    }

    // 对每列进行分数统计
    for (int j = 0; j < COL; j++)
    {
        for (int i = 0; i < ROW; i++)
            sum += chessboard[i][j];

        if (sum == 3)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1)
                    score[k][j] += 1;
            }
        }
        else if (sum == 4)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1)
                    score[k][j] += 10;
            }
        }
        else if (sum == 8)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1)
                    score[k][j] += 50;
            }
        }
        else if (sum == 7)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1) // 1+1+5;重要性：较高;权重：200
                    score[k][j] += 200;
            }
        }
        else if (sum == 5)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1)
                    score[k][j] += 500;
            }
        }
        else if (sum == 11)
        {
            for (int k = 0; k < COL; k++)
            {
                if (chessboard[k][j] == 1)
                    score[k][j] += 1000;
            }
        }

        sum = 0;
    }

    // 对对角线进行分数统计
    for (int i = 0; i < ROW; i++)
        sum += chessboard[i][i];

    if (sum == 3)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 1;
        }
    }
    else if (sum == 4)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 10;
        }
    }
    else if (sum == 8)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 50;
        }
    }
    else if (sum == 7)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 100;
        }
    }
    else if (sum == 5)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 500;
        }
    }
    else if (sum == 11)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][i] == 1)
                score[i][i] += 1000;
        }
    }

    // 对反对角线进行分数统计
    sum = 0;
    for (int i = 0; i < ROW; i++)
        sum += chessboard[i][2 - i];
    if (sum == 3)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1)
                score[i][2 - i] += 1;
        }
    }
    else if (sum == 4)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1)
                score[i][2 - i] += 10;
        }
    }
    else if (sum == 8)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1)
                score[i][2 - i] += 50;
        }
    }
    else if (sum == 7)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1) // 1+1+5;权重：100
                score[i][2 - i] += 100;
        }
    }
    else if (sum == 5)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1)
                score[i][2 - i] += 500;
        }
    }
    else if (sum == 11)
    {
        for (int i = 0; i < COL; i++)
        {
            if (chessboard[i][2 - i] == 1)
                score[i][2 - i] += 1000;
        }
    }

    int maxRow = 0, maxCol = 0;
    for (int i = 0; i < ROW; i++)
        for (int j = 0; j < COL; j++)
        {
            if (score[i][j] > score[maxRow][maxCol])
            {
                maxRow = i;
                maxCol = j;
            }
            cout << score[i][j] << endl;
        }
    chessboard[maxRow][maxCol] = 5;

    cout << "电脑落子在" << maxRow + 1 << " " << maxCol + 1 << endl;
    chess[maxRow][maxCol] = -1;
}

int evaluate() //通过除以3取整，使得存在1条可能胜利的线得到值为1，否则为0
{
    int i, j, temp[3][3];

    x = y = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (chess[i][j] == 0)
                temp[i][j] = 1;
            else
                temp[i][j] = chess[i][j];
        }
    }

    for (i = 0; i < 3; i++)
    {
        x += (temp[i][0] + temp[i][1] + temp[i][2]) / 3;
    }

    for (i = 0; i < 3; i++)
    {
        x += (temp[0][i] + temp[1][i] + temp[2][i]) / 3;
    }

    x += (temp[0][0] + temp[1][1] + temp[2][2]) / 3;
    x += (temp[2][0] + temp[1][1] + temp[0][2]) / 3;

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (chess[i][j] == 0)
                temp[i][j] = -1;
            else
                temp[i][j] = chess[i][j];
        }
    }

    for (i = 0; i < 3; i++)
    {
        y += (temp[i][0] + temp[i][1] + temp[i][2]) / 3;
    }

    for (i = 0; i < 3; i++)
    {
        y += (temp[0][i] + temp[1][i] + temp[2][i]) / 3;
    }

    y += (temp[0][0] + temp[1][1] + temp[2][2]) / 3;
    y += (temp[2][0] + temp[1][1] + temp[0][2]) / 3;

    return x + y;
}

int isWin()
{ // 1表示电脑获得胜利，-1表示玩家获得胜利，0表示尚未分出胜负
    int i;
    for (i = 0; i < 3; i++)
    {
        if (chess[i][0] == 1 && chess[i][1] == 1 && chess[i][2] == 1)
            return 1;
        if (chess[i][0] == -1 && chess[i][1] == -1 && chess[i][2] == -1)
            return -1;
    }

    for (i = 0; i < 3; i++)
    {
        if (chess[0][i] == 1 && chess[1][i] == 1 && chess[2][i] == 1)
            return 1;
        if (chess[0][i] == -1 && chess[1][i] == -1 && chess[2][i] == -1)
            return -1;
    }

    if ((chess[0][0] == 1 && chess[1][1] == 1 && chess[2][2] == 1) || (chess[2][0] == 1 && chess[1][1] == 1 && chess[0][2] == 1))
        return 1;
    if ((chess[0][0] == -1 && chess[1][1] == -1 && chess[2][2] == -1) || (chess[2][0] == -1 && chess[1][1] == -1 && chess[0][2] == -1))
        return -1;

    return 0;
}

void PlayerInput(int player)
{
    int row, col; //行、列
    while (true)
    {
        cout << "\n你选择落子于？(x y):" << endl;
        scanf("%d%d", &row, &col);

        if (row > 0 && row < 4 && col > 0 && col < 4 && chess[row - 1][col - 1] == 0)
        {
            chess[row - 1][col - 1] = player;
            chessboard[row - 1][col - 1] = 2;
            break;
        }
        else
        {
            cout << "你不可在此处落子!" << endl;
        }
    }
}

void PrintChessboard()
{
    int i, j;

    cout << "" << endl;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (chess[i][j] == 1)
                printf("○");
            else if (chess[i][j] == 0)
                printf("□");
            else if (chess[i][j] == -1)
                printf("×");
        }
        cout << "" << endl;
    }
}

int PlayTicTacToe()
{
    Reset();
    int player, option;

    printf("\n人机对战还是双玩家对战?\n1)人机\t2)双玩家[ ]\b\b");
    while (1)
    {
        scanf("%d", &option);
        if (option != 1 && option != 2)
        {
            getchar();
            printf("输入选项无效，请重新输入\n");
        }
        else
            break;
    }

    while (1)
    {
        player = count % 2 + 1;
        if (player == 2)
            player = -1;

        if (option == 2 || player == 1)
            PlayerInput(player);
        else
            PcPlay();

        PrintChessboard();
        count++;
        int res = isWin();
        if (res == -1)
        {
            cout << "\n玩家2获得了胜利!" << endl;
            return 0;
        }
        else if (res == 1)
        {
            cout << "\n玩家1获得了胜利!" << endl;
            return 0;
        }
        res = evaluate();
        if ((y == 0 && x == 0) || count == 9)
        {
            // cout <<x <<" "<< y;
            cout << "\n和棋" << endl;
            return 0;
        }
    }
}

int main()
{
    int option;

    while (1)
    {
        PlayTicTacToe();
        printf("\n再来一局?\n1)好，再来！\t2)算了，退出！[ ]\b\b");
        while (1)
        {
            scanf("%d", &option);
            if (option != 1 && option != 2)
            {
                getchar();
                printf("输入选项无效，请重新输入\n");
            }
            else
                break;
        }
        if (option == 2)
            break;
    }
}