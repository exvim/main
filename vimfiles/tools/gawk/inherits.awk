/inherits:/{
    FS="[\t]"
    for ( i = NF; i >= 1; i = i - 1) {
        if ( $i ~ /inherits:/ ) {
            str_parents=$i
            sub(/inherits:/,"",str_parents)
            split(str_parents,parent_list,",")
            for ( i in parent_list ) {
                line = sprintf( "\"%s\" -> \"%s\"", parent_list[i], $1 )
                Mask[line] = line;
            }
            break
        }
    }
}
END{
    # n = asort(Mask);
    for ( i in Mask )
        print(Mask[i])
}
