
// Q7 Solution

void main() {
    List<int> L = [ 4, 5, 9, 2, 5, 7, 8, 1, 4, 6, 3, 2, 5, 3, 4, 2];
    int s=L[0], ss=L[0];
    for (final n in L) {
        if (n < s) {
            ss = s;
            s = n;
        }
        if (s < n && n < ss) {
            ss = n;
        }
    }
    print(ss);
}
