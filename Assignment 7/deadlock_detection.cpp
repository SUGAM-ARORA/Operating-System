#include <iostream>
using namespace std;

const int P = 4; // processes
const int R = 3; // resources

int allocation[P][R] = {
    {0, 1, 0},
    {2, 0, 0},
    {3, 0, 3},
    {2, 1, 1}
};

int request[P][R] = {
    {0, 0, 0},
    {2, 0, 2},
    {0, 0, 0},
    {1, 0, 0}
};

int available[R] = {1, 0, 1};

bool detectDeadlock() {
    bool finish[P] = {false};
    int work[R];

    for (int i = 0; i < R; i++)
        work[i] = available[i];

    while (true) {
        bool progress = false;

        for (int i = 0; i < P; i++) {
            if (!finish[i]) {
                bool canFinish = true;
                for (int j = 0; j < R; j++) {
                    if (request[i][j] > work[j]) {
                        canFinish = false;
                        break;
                    }
                }

                if (canFinish) {
                    for (int j = 0; j < R; j++)
                        work[j] += allocation[i][j];
                    finish[i] = true;
                    progress = true;
                }
            }
        }

        if (!progress) break;
    }

    bool deadlock = false;
    for (int i = 0; i < P; i++) {
        if (!finish[i]) {
            cout << "⚠ Process P" << i << " is in deadlock.\n";
            deadlock = true;
        }
    }

    if (!deadlock)
        cout << "✅ No deadlock detected.\n";

    return deadlock;
}

int main() {
    detectDeadlock();
    return 0;
}
