
// Q6 solution

void main() {
    int N = 8, steps = 0;
    while (N!=0) {
        if (N%2==0) {
            N ~/= 2;
        } else {
            N -= 1;
        }
        steps++;
    }
    print(steps);
}
