#include <iostream>
using namespace std;

const int P = 5; // Number of processes
const int R = 3; // Number of resources

int available[R] = {3, 3, 2};

int max[P][R] = {
    {7, 5, 3},
    {3, 2, 2},
    {9, 0, 2},
    {2, 2, 2},
    {4, 3, 3}
};

int allocation[P][R] = {
    {0, 1, 0},
    {2, 0, 0},
    {3, 0, 2},
    {2, 1, 1},
    {0, 0, 2}
};

int need[P][R];

void calculateNeed() {
    for (int i = 0; i < P; i++)
        for (int j = 0; j < R; j++)
            need[i][j] = max[i][j] - allocation[i][j];
}

bool isSafe() {
    bool finish[P] = {false};
    int work[R];

    for (int i = 0; i < R; i++)
        work[i] = available[i];

    int safeSeq[P], count = 0;

    while (count < P) {
        bool found = false;
        for (int p = 0; p < P; p++) {
            if (!finish[p]) {
                bool canAllocate = true;
                for (int r = 0; r < R; r++) {
                    if (need[p][r] > work[r]) {
                        canAllocate = false;
                        break;
                    }
                }

                if (canAllocate) {
                    for (int r = 0; r < R; r++)
                        work[r] += allocation[p][r];
                    safeSeq[count++] = p;
                    finish[p] = true;
                    found = true;
                }
            }
        }

        if (!found) {
            cout << "System is not in a safe state.\n";
            return false;
        }
    }

    cout << "System is in a safe state.\nSafe Sequence: ";
    for (int i = 0; i < P; i++)
        cout << "P" << safeSeq[i] << " ";
    cout << endl;
    return true;
}

int main() {
    calculateNeed();
    isSafe();
    return 0;
}
