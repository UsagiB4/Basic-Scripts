awk '{
    if ($0 ~ /(Lines: 76|Lines: 325|Lines: 7019|Lines: 257|Lines: 65|Lines: 257|Lines: 321|Lines: 129|Lines: 135|Lines: 285|Lines: 105|Lines: 28|Lines: 474|Lines: 13|Lines: 90|Lines: 473|Lines: 102)/) {
        skip=4; next;
    }
    if (skip > 0) {
        skip--;
        next;
    }
    print;
}' $1
