# EXAMPLE { 
# /\.cpp$|\.vim$|\.txt$|\.mk$/{
#     print($0)
# }
# } EXAMPLE end 

$0 ~ filter_pattern{
    # filter out hidden files
    if ( $0 !~ /.*\\\..*/ )
        print($0)
}

