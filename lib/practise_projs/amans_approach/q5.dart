
// Q5 solution

int set_sum(Set<int> set) {
    int sum = 0;
    for (final v in set) {
        sum += v;
    }
    return sum;
}

List<int> sort_decending(List<int> list) {
    for (int i = 0; i<list.length; i++) {
        for (int j = i+1; j<list.length; j++) {
            if (list[i] < list[j]) {
                int t;
                t = list[i];
                list[i] = list[j];
                list[j] = t;
            }
        }
    }
    return list;
}

void main() {
    var arr = [1, 5, 6, 11];

    arr = sort_decending(arr);

    Set<int> set1 = {}, set2 = {};

    for (final n in arr) {
        if (set_sum(set1) < set_sum(set2)) {
            set1.add(n);
        } else {
            set2.add(n);
        }
    }

    var d = (set_sum(set1) - set_sum(set2)).abs();

    print(set1);
    print(set2);
    print(d);
}
